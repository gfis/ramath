/*  ShuntingYard: parser for the recognition of arithmetic and boolean expressions
 *  @(#) $Id: ShuntingYard.java 522 2010-07-26 07:14:48Z gfis $
 *  2020-06-11: decimal dot in numbers
 *  2020-06-09: no STDERR messages; start them with "# "
 *  2020-04-06: unary - => x-.
 *  2020-04-02: functions, with ",", as brackets: log( .... )log
 *  2019-05-23: + functionPattern
 *  2019-05-12: unary -, renaming; extracted from PolynomialParser
 *  2009-07-01, Georg Fischer: copied from Polynomial
 */
/*
 * Copyright 2019 Dr. Georg Fischer <dr.georg.fischer(at)gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.teherba.ramath.symbolic;
import  java.io.BufferedReader;
import  java.io.FileInputStream;
import  java.io.InputStreamReader;
import  java.io.Serializable;
import  java.nio.channels.Channels;
import  java.nio.channels.ReadableByteChannel;
import  java.util.ArrayList;
import  java.util.Stack;
import  java.util.regex.Matcher;
import  java.util.regex.Pattern;

/** This parser recognizes elementary arithmetic expressions and relations
 *  built from the following components:
 *  <ul>
 *  <li>&lt; &lt;= = &gt;= &gt; !=</li>
 *  <li>+ - * /</li>
 *  <li>unary + -</li>
 *  <li>( )</li>
 *  <li>integer constants</li>
 *  <li>variable names consisting of letters and digits, starting with a letter;
 *  names starting with an uppercase letter can be excluded from modulo substitution (option -u)</li>
 *  <li>^n or **n for exponentiation with a (small) integer exponent</li>
 *  <li>'#' starts a comment - all characters up to '\n' are ignored</li>
 *  </ul>
 *  The parser knows precedence rules for the operators and expands the expression
 *  into a multivariate polynomial by using the "railroad shunting yard"
 *  algorithm of Edsger Dijkstra (1961).
 *  @author Dr. Georg Fischer
 */
public class ShuntingYard {
    public final static String CVSID = "@(#) $Id: ShuntingYard.java 522 2010-07-26 07:14:48Z gfis $";

    /** Debugging switch */
    public int debug = 0;

    /** state of the finite automaton */
    private enum State
            { IN_START      // at the beginning of the input string
            , IN_VNAME      // after the first letter of a name
            , IN_NUMBR      // after the first digit of a number
            , IN_EXPON      // after the first superscripted digit
            , IN_OPTOR      // after first character of a relational or boolean operator, or after '%'
            , IN_CLOSE      // after ')' - eventually insert '*'
            , IN_COMMT      // after '#' - ignore all up to "\n" or end of string
            };
    public static String FUNCT = "funct";

    /** pushdown stack for function names */
    private Stack    <String> funcStack;
    /** pushdown stack for operators and parentheses */
    private Stack    <String> operStack;
    /** append the operands and postfix operators to this list */
    private ArrayList<String> postfix;
    /*  optional regex pattern for names which should be treated as functions,
     *  for which no "*" is inserted before a "("
     */
    private Pattern functionPattern;

    /** No-args Constructor with default function pattern
     */
    public ShuntingYard() {
        this("\\W", 0); // no word character - not any name is a function name
    } // no-args Constructor

    /** Constructor with function pattern
     *  @param funcPat a regular expression denoting the names
     *  for which no "*" is inserted before a "(".
     */
    public ShuntingYard(String funcPat) {
        this(funcPat, 0);
    } // Constructor(String)

    /** Constructor with debugging mode
     *  @param debugMode 0=none, 1=some, 2=more
     */
    public ShuntingYard(int debugMode) {
        this("\\W", debugMode);
    } // Constructor(String)

    /** Constructor with function pattern and debugging mode
     *  @param funcPat a regular expression denoting the names
     *  for which no "*" is inserted before a "(".
     *  @param debugMode 0=none, 1=some, 2=more
     */
    public ShuntingYard(String funcPat, int debugMode) {
        postfix   = new ArrayList<String>(256);
        operStack = new Stack    <String>();
        setFunctionPattern(funcPat);
        setDebug(debugMode);
    } // Constructor(String)

    /** Sets the debugging flag
     *  @param debugMode 0=no debugging output, 1=some, 2=more
     */
    public void setDebug(int debugMode) {
        debug = debugMode;
    } // setDebug

    /** Sets the function pattern
     *  @param funcPat a regular expression denoting the names
     *  for which no "*" is inserted before a "(".
     */
    public void setFunctionPattern(String funcPat) {
        functionPattern = Pattern.compile(funcPat);
    } // setFunctionPattern

    /** Appends an operand or operator to the postfix list.
     *  @param element to be appended
     */
    private void postfixAppend(String elem) {
        postfix.add(elem);
    } // postfixAppend

    /** Pushes an operator and its precedence onto the operator stack.
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void pushOper(String precOper) {
        operStack.push(precOper);
        if (operStack.size() > 64) {
            throw new IllegalArgumentException("operStack overflow");
        }
    } // pushOper

    /** Pops all operators with lower or same precedence, and pushes the parameter operator.
     *  This gives left associativity.
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void popLowerSameAndPush(String precOper) {
        boolean busy = true;
        while (busy && ! operStack.empty()) {
            String elem = operStack.peek();
            if (precOper.charAt(0) <= elem.charAt(0) && elem.charAt(1) != '(') { // "<=" instead of "<"
                elem = operStack.pop();
                postfixAppend(elem.substring(1));
            } else { // new precedence is higher
                busy = false;
            }
        } // while
        pushOper(precOper);
    } // popLowerSameAndPush

    /** Pops all operators with lower precedence only, and pushes the parameter operator.
     *  This gives right associativity.
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void popLowerAndPush(String precOper) {
        boolean busy = true;
        while (busy && ! operStack.empty()) {
            String elem = operStack.peek();
            if (precOper.charAt(0) <  elem.charAt(0) && elem.charAt(1) != '(') { // "<" instead of "<="
                elem = operStack.pop();
                postfixAppend(elem.substring(1));
            } else { // new precedence is higher
                busy = false;
            }
        } // while
        pushOper(precOper);
    } // popLowerAndPush

    /** Pops all operators with lower precedence, and pushes a zero (for unary "-") and the parameter operator
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void popLowerSameAndPushZero(String precOper) {
        postfixAppend("0"); // a zero is inserted before an unary "-"
        popLowerSameAndPush(precOper);
    } // popLowerSameAndPushZero

    /** Reads an input string containing an arithmetic expression with infix notation
     *  and fills a list of output symbols representing the same expression in postfix notation (reverse polish notation).
     *  The railroad shunting yard algorithm is that of Edsger Dijkstra (1961) as described in
     *  <a href="http://en.wikipedia.org/wiki/Shunting-yard_algorithm">Wikipedia</a>.
     *  @param parmInput the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return array of Strings with operators, operands and function symbols
     *  <p>
     *  The precedence of operators (in <em>precOper, operStack</em>) is indicated
     *  by the ASCII order of lowercase letters according to the following table:
     *  <table><caption>Operator Precedence and corresponding Codes</caption>
     *  <tr><td>,                            </td><td>i</td></tr>
     *  <tr><td>||                           </td><td>j</td></tr>
     *  <tr><td>&amp;&amp;                   </td><td>k</td></tr>
     *  <tr><td>&lt;= &gt;= == != &gt; &lt;  </td><td>l</td></tr>
     *  <tr><td>+ -                          </td><td>m</td></tr>
     *  <tr><td>* /                          </td><td>p</td></tr>
     *  <tr><td>^                            </td><td>q</td></tr>
     *  <tr><td>-. (unary) !                 </td><td>x</td></tr>
     *  <tr><td>(                            </td><td>y</td></tr>
     *  </table>
     */
    public ArrayList<String> getPostfixList(String parmInput) {
        String input = "("
                + (parmInput.trim().startsWith("-") ? "0" : "")
                + parmInput + ")";
        postfix = new ArrayList<String>(256);
        StringBuffer buffer = new StringBuffer(16); //accumulate variable names, numbers and operators here
        String elem = null; // next element on stack / in postfix list
        char ch = ' ';
        boolean busy = false;
        boolean readOff = true;
        funcStack = new Stack<String>();
        operStack = new Stack<String>();
        int ipos = 0; // position in input string
        State state = State.IN_START;
        char prev = ' '; // previous non-space character, for unary minus detection
        while (ipos < input.length()) {
            if (readOff) {
                ch = input.charAt(ipos);
            }
            readOff = true;
            if (! Character.isWhitespace(ch)) { // ignore whitespace
                if (debug >= 2) {
                    System.out.println("old " + state + "'" + ch + "' \tOS=" + operStack + "\tPF=" + postfix);
                }
                switch (state) {
                    case IN_START:
                        switch (ch) {
                            case ',':
                                popLowerSameAndPush("i,");
                                break;
                            case '<':
                            case '>':
                            case '=':
                            case '!':
                            case '&':
                            case '*':
                        //  case '|':
                                buffer.setLength(0);
                                buffer.append(ch);
                                state = State.IN_OPTOR;
                                break;
                            case '%':
                                if (ipos < input.length() - 2 && Character.isLetterOrDigit(input.charAt(ipos + 1))) { // hex pair follows
                                    try {
                                        ch = (char) Integer.parseInt(input.substring(ipos + 1, ipos + 3), 16);
                                        ipos += 2;
                                        readOff = false;
                                    } catch (Exception exc) { // no digits - continue
                                        // ignore
                                    }
                                } // hex pair follows
                                break;
                            case '+':
                                if (prev == '(') {
                                    // ignore unary +
                                } else {
                                    popLowerSameAndPush("m+");
                                }
                                break;
                            case '-':
                                if (false) {
                                } else if (prev == '('
                                        || prev == '='
                                        || prev == '<'
                                        || prev == '>'
                                        || prev == '|'
                                        || prev == '&'
                                        || prev == '!'
                                        || prev == '*'
                                        || prev == '/'
                                        || prev == ','
                                        ) {
                                    popLowerSameAndPushZero("m-"); // unary "-"
                                    // popLowerSameAndPush("x-."); // unary "-"
                                } else {
                                    popLowerSameAndPush("m-"); // binary "-"
                                }
                                break;
                            case '/':
                                popLowerSameAndPush("p/");
                                break;
                            case '^': // right-associative ???
                                popLowerAndPush("q^");
                                break;
                            case '¹': // '\u00b9', super 1
                                popLowerAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('1');
                                state = State.IN_EXPON;
                                break;
                            case '²': // '\u00b2', super 2
                                popLowerAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('2');
                                state = State.IN_EXPON;
                                break;
                            case '³': // '\u00b3', super 3
                                popLowerAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('3');
                                state = State.IN_EXPON;
                                break;
                            case '(':
                                pushOper("y("); // higher than all other precedences
                                break;
                            case ')': // find the corresponding opening parenthesis on the stack
                                state = State.IN_CLOSE;
                                busy = true;
                                while (busy && ! operStack.empty()) {
                                    elem = (String) operStack.pop();
                                    if (elem.charAt(1) == '(') {
                                        busy = false;
                                        if (elem.charAt(0) == 'z') { // function call
                                            postfixAppend(funcStack.pop() + ")");
                                        } // function call
                                    } else { // other operation
                                        postfixAppend(elem.substring(1));
                                    }
                                } // while
                                break;
                            case '#':
                                state = State.IN_COMMT;
                                break;
                            default:
                                if (false) {
                                } else if (Character.isJavaIdentifierStart(ch)) {
                                    buffer.setLength(0);
                                    buffer.append(ch);
                                    state = State.IN_VNAME;
                                } else if (ch >= '\u2070' && ch <= '\u2079') {
                                    popLowerAndPush("q^");
                                    buffer.setLength(0);
                                    buffer.append(Character.forDigit(ch - 0x2070, 10));
                                    state = State.IN_EXPON;
                                } else if (Character.isDigit(ch)) {
                                    buffer.setLength(0);
                                    buffer.append(ch);
                                    state = State.IN_NUMBR;
                                } else { // invalid character
                                    System.out.println("# invalid character in expression: " + input.substring(ipos));
                                }
                                break;
                        } // switch ch
                        break; // IN_START

                    case IN_VNAME:
                        if (false) {
                        } else if (Character.isJavaIdentifierPart(ch)) {
                            buffer.append(ch);
                        } else if (ch == '(') { // name before "("
                            String  name = buffer.toString();
                            Matcher matcher = functionPattern.matcher(name);
                            if (matcher.matches()) { // is a function name
                                postfixAppend(name + "(");
                                funcStack.push(name);
                                pushOper("z("); // higher than all other precedences
                                readOff = true;
                                state = State.IN_START;
                            } else { // is no function name - insert "*"
                                postfixAppend(name);
                                popLowerSameAndPush("p*");
                                readOff = false;
                                state = State.IN_START;
                            }
                        } else {
                            postfixAppend(buffer.toString());
                            readOff = false;
                            state = State.IN_START;
                        }
                        break; // IN_VNAME

                    case IN_NUMBR:
                        switch (ch) {
                            case '(':
                                postfixAppend(buffer.toString());
                                popLowerSameAndPush("p*");
                                readOff = false;
                                state = State.IN_START;
                                break;
                            case '¹': // '\u00b9', super 1, right-associative ???
                            case '²': // '\u00b2', super 2, right-associative ???
                            case '³': // '\u00b3', super 3, right-associative ???
                                postfixAppend(buffer.toString());
                                readOff = false;
                                state = State.IN_START;
                                break;
                            default:
                                if (false) {
                                } else if (ch >= '\u2070' && ch <= '\u2079') { // superscript digits 0..9
                                    postfixAppend(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                } else if (ch >= '0' && ch <= '9') { // Character.isDigit(ch)) {
                                    buffer.append(ch);
                                } else if (ch == '.') { // decimal dot
                                    buffer.append(ch);
                                } else if (Character.isLetter(ch)) { // imply a multiplication operator
                                    postfixAppend(buffer.toString());
                                    popLowerSameAndPush("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else {
                                    postfixAppend(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                }
                                break;
                        } // switch ch
                        break; // IN_NUMBR

                    case IN_EXPON: // similiar to, but not identical with IN_NUMBR
                        switch (ch) {
                            case '(':
                                postfixAppend(buffer.toString());
                                popLowerSameAndPush("p*");
                                readOff = false;
                                state = State.IN_START;
                                break;
                            case '¹': // '\u00b9', super 1, right-associative ???
                                buffer.append('1');
                                break;
                            case '²': // '\u00b2', super 2, right-associative ???
                                buffer.append('2');
                                break;
                            case '³': // '\u00b3', super 3, right-associative ???
                                buffer.append('3');
                                break;
                            default:
                                if (false) {
                                } else if (ch >= '\u2070' && ch <= '\u2079') { // superscript digits 0..9
                                    buffer.append(Character.forDigit(ch - 0x2070, 10));
                                } else if (ch >= '0' && ch <= '9') { // Character.isDigit(ch)) {
                                    postfixAppend(buffer.toString());
                                    popLowerSameAndPush("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else if (Character.isLetter(ch)) { // imply a multiplication operator
                                    postfixAppend(buffer.toString());
                                    popLowerSameAndPush("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else {
                                    postfixAppend(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                }
                                break;
                        } // switch ch
                        break; // IN_NUMBR

                    case IN_OPTOR:
                        String oper = null;
                        switch (ch) {
                            case '<':
                            case '>':
                            case '=':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("<=")) {
                                    popLowerSameAndPush("l<=");
                                } else if (oper.equals(">=")) {
                                    popLowerSameAndPush("l>=");
                                } else if (oper.equals("==")) {
                                    popLowerSameAndPush("l=" );
                                } else if (oper.equals("=<")) {
                                    popLowerSameAndPush("l<=");
                                } else if (oper.equals("=>")) {
                                    popLowerSameAndPush("l>=");
                                } else if (oper.equals("!=")) {
                                    popLowerSameAndPush("l!=");
                                } else if (oper.equals("<>")) {
                                    popLowerSameAndPush("l!=");
                                } else if (oper.equals("><")) {
                                    popLowerSameAndPush("l!=");
                                } else { // >> <<
                                    System.out.println("# invalid relational operator " + oper);
                                }
                                break;
                        //  case '!': // not - later?
                        //  case '|': // or  - later?
                            case '*':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("**")) { // exponentiation
                                    popLowerAndPush("q^");
                                } else {
                                    System.out.println("# invalid multiplication operator " + oper);
                                }
                                break;
                            case '-':
                                buffer.append(ch);
                                switch (buffer.charAt(0)) {
                                    case '<':
                                    case '>':
                                    case '=':
                                        popLowerSameAndPush("l" + buffer.substring(0, 1));
                                        popLowerSameAndPushZero("m-"); // unary "-"
                                    //  popLowerSameAndPush("x-."); // unary -
                                        break;
                                    case '!': // maybe supported later?
                                        break;
                                    case '*':
                                    case '/':
                                        popLowerSameAndPush("p" + buffer.substring(0, 1));
                                        popLowerSameAndPushZero("m-"); // unary "-"
                                        break;
                                    case '&':
                                        popLowerSameAndPush("k" + buffer.substring(0, 1));
                                        popLowerSameAndPushZero("m-"); // unary "-"
                                        break;
                                    case '|': // maybe supported later?
                                        popLowerSameAndPush("j" + buffer.substring(0, 1));
                                        popLowerSameAndPushZero("m-"); // unary "-"
                                        break;
                                    default: // should never happen
                                        break;
                                } // switch 2nd ch
                                break;
                            case '+':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("*+")) { // ignore unary "+"
                                    popLowerSameAndPush("p*");
                                } else if (oper.equals("/+")) { // ignore unary "+"
                                    popLowerSameAndPush("p/");
                                } else {
                                    System.out.println("# invalid unary plus " + oper);
                                }
                                break;
                            case '&':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("&&")) {
                                    popLowerSameAndPush("k&");
                                } else { // >> <<
                                    System.out.println("# invalid boolean operator " + oper);
                                }
                                break;
                            default:
                                char ch2 = buffer.charAt(0);
                                switch (ch2) {
                                    case '<':
                                    case '>':
                                    case '=':
                                        popLowerSameAndPush("l" + buffer.substring(0, 1));
                                        break;
                                    case '!': // maybe supported later?
                                        break;
                                    case '*':
                                    case '/':
                                        popLowerSameAndPush("p" + buffer.substring(0, 1));
                                        break;
                                    case '&':
                                        popLowerSameAndPush("k" + buffer.substring(0, 1));
                                        break;
                                    case '|': // maybe supported later?
                                        popLowerSameAndPush("j" + buffer.substring(0, 1));
                                        break;
                                    default: // should never happen
                                        break;
                                } // switch 2nd ch
                                readOff = false;
                                break;
                        } // switch 1st ch
                        state = State.IN_START;
                        break; // IN_OPTOR

                    case IN_CLOSE: // after ')' - eventually insert a '*'
                        if (false) {
                        } else if (Character.isJavaIdentifierPart(ch)) { // following identifier
                            popLowerSameAndPush("p*");
                        } else if (ch == '(') { // following "("
                            popLowerSameAndPush("p*");
                        }
                        readOff = false;
                        state = State.IN_START;
                        break; // IN_CLOSE

                    case IN_COMMT: // after '#' - skip until "\n" or EOS
                        if (false) {
                        } else if (ch == '\n') {
                            state = State.IN_START;
                        }
                        break; // IN_COMMT

                    default: // should never be reached
                        System.out.println("# invalid state " + state + " in ShuntingYard.shuntingYardAlgorithm");
                        state = State.IN_START;
                        break;
                } // switch state
                if (readOff) {
                    ipos ++;
                    prev = ch;
                }
                // if not whitespace
            } else {
                ipos ++; // ignore all whitespace
            }
            if (debug >= 3) {
                System.out.println("new " + state + "'" + ch + "' \tOS=" + operStack + "\tPF=" + postfix);
                System.out.println("----------------");
            }
        } // while ipos

        // now move all remaining operations to the postfix queue
        while (! operStack.empty()) {
            elem = (String) operStack.pop();
            if (elem.charAt(1) == '(') {
                // error
            } else { // other operation
                postfixAppend(elem.substring(1));
            }
        } // while
        if (debug >= 1) {
            System.out.println("result postfix=" + postfix);
        }
        return postfix;
    } // getPostfixList

    /** Reads an input string containing an arithmetic expression with infix notation
     *  and fills a list of output symbols representing the same expression in
     *  postfix notation (reverse polish notation).
     *  @param parmInput the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @param sep separator for operators and operands, presumably some whitespace character
     *  @return String with operators, operands and function symbols separated by <em>sep</em>;
     *  the first character is the separator, which should be skipped for any <em>split</em> operation.
     */
    public String getPostfixString(String sep, String parmInput) {
        StringBuffer result = new StringBuffer(128);
        getPostfixList(parmInput); // global: postfix
        int len = postfix.size();
        for (int ipfix = 0; ipfix < len; ipfix ++) {
            result.append(sep);
            result.append(postfix.get(ipfix));
        } // for ipfix
        return result.toString();
    } // getPostfixString(String, String)

    /** Reads an input string containing an arithmetic expression with infix notation
     *  and fills a list of output symbols representing the same expression in
     *  postfix notation (reverse polish notation).
     *  @param parmInput the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return String with operators, operands and function symbols separated by a space;
     *  the first character is the separator, which should be skipped for any <em>split</em> operation.
     */
    public String getPostfixString(String parmInput) {
        return getPostfixString(" ", parmInput);
    } // getPostfixString(String)

    /** Builds an infix arithmetic expression from the internal postfix list
     *  of operators, function symbols and operands (variables, numbers).
     *  @return expression as String.
     */
    public String buildInfixExpression() {
        return buildInfixExpression(0, postfix.size());
    } // buildInfixExpression()

    // operator precedence codes
    private static final char OPC_COMMA  = 'i';
    private static final char OPC_OR     = 'j';
    private static final char OPC_AND    = 'k';
    private static final char OPC_RELAT  = 'l';
    private static final char OPC_ADD    = 'm';
    private static final char OPC_MULT   = 'n';
    private static final char OPC_DIV    = 'p';
    private static final char OPC_POW    = 'q';
    private static final char OPC_MINUS  = 'x';
    private static final char OPC_OPEN   = 'y';
    private static final char OPC_PRIM   = 'z';

    /** Builds an infix arithmetic expression from the internal postfix list
     *  of operators, function symbols and operands (variables, numbers).
     *  @param fromIndex (inclusive) at start of list
     *  @param toIndex   (exclusive) behind end of list
     *  @return expression as String.
     */
    public String buildInfixExpression(int fromIndex, int toIndex) {
        String result = null;
        StringBuffer buffer = new StringBuffer(128);
        Stack<String> opdStack = new Stack<String>(); // first character is precedence code
        // opdStack contains: ... opd1 opd2 <operator>
        String opd1 = null;
        char   opc1 = 'z';
        String opd2 = null;
        char   opc2 = 'z';
        String elem = null;
        int ipfix = fromIndex;
        try {
            while (ipfix < toIndex) {
                elem = postfix.get(ipfix);
                char elast = elem.charAt(elem.length() - 1); // last character, because of "!="; beware of unary minus "-."
                char elec = OPC_PRIM; // precedence of postfix element
                if (false) {
                } else if (elem.equals("-.")           ) { elec = OPC_MINUS ;
                } else if (elast == '^'                ) { elec = OPC_POW   ;
                } else if (elast == '/'                ) { elec = OPC_DIV   ;
                } else if (elast == '*'                ) { elec = OPC_MULT  ;
                } else if (elast == '+' || elast == '-') { elec = OPC_ADD   ;
                } else if (elast == '<' || elast == '>' 
                        || elast == '='                ) { elec = OPC_RELAT ;
                } else if (elast == '&'                ) { elec = OPC_AND   ;
                } else if (elast == '|'                ) { elec = OPC_OR    ;
                } else if (elast == ','                ) { elec = OPC_COMMA ;
                } else if (elast == ')'                ) { elec = Character.isJavaIdentifierStart(elem.charAt(0)) ? OPC_PRIM : OPC_OPEN; // PRIM = function
                } else                                   { // elec = OPC_PRIM  ;
                }
                buffer.setLength(0); // clear it
                switch (elast) {
                    case '^':
                    case '*':
                    case '%':
                    case '/':
                    case '+': 
                    case '-':
                    case '=':
                    case '<':
                    case '>':
                    case ',':
                        // left associative
                        opd2 = opdStack.pop();
                        opd1 = opdStack.pop();
                        opc1 = opd1.charAt(0);
                        buffer.append(elec);
                        if (opc1 <  elec || (opc1 == OPC_MINUS && elec >= OPC_ADD && elec <= OPC_MINUS)) {
                            buffer.append('(');
                            buffer.append(opd1.substring(1));
                            buffer.append(')');
                        } else {
                            buffer.append(opd1.substring(1));
                        }
                        buffer.append(elem);
                        opc2 = opd2.charAt(0);
                        if (opc2 <= elec || (opc2 == OPC_MINUS && elec >= OPC_ADD && elec <= OPC_MINUS)) {
                            buffer.append('(');
                            buffer.append(opd2.substring(1));
                            buffer.append(')');
                        } else {
                            buffer.append(opd2.substring(1));
                        }
                        opdStack.push(buffer.toString());
                        break;
                    case 'ß': 
                        // right associative
                        opd2 = opdStack.pop();
                        opd1 = opdStack.pop();
                        opc1 = opd1.charAt(0);
                        buffer.append(elec);
                        if (opc1 <= elec || (opc1 == OPC_MINUS && elec >= OPC_ADD && elec <= OPC_MINUS)) {
                            buffer.append('(');
                            buffer.append(opd1.substring(1));
                            buffer.append(')');
                        } else {
                            buffer.append(opd1.substring(1));
                        }
                        buffer.append(elem);
                        opc2 = opd2.charAt(0);
                        if (opc2 <=  elec || (opc2 == OPC_MINUS && elec >= OPC_ADD && elec <= OPC_MINUS)) {
                            buffer.append('(');
                            buffer.append(opd2.substring(1));
                            buffer.append(')');
                        } else {
                            buffer.append(opd2.substring(1));
                        }
                        opdStack.push(buffer.toString());
                        break;                   
                    case '.':
                        if (elec == OPC_MINUS) { // really unary - ?
                            opd1 = opdStack.pop();
                            opc1 = opd1.charAt(0);
                            buffer.append(elec);
                            buffer.append(elem.charAt(0)); // "-"
                            if (opc1 != OPC_PRIM) {
                                buffer.append('(');
                                buffer.append(opd1.substring(1));
                                buffer.append(')');
                            } else {
                                buffer.append(opd1.substring(1));
                            }
                            opdStack.push(buffer.toString());
                        } // unary -
                        break;
                    case '(':
                        // ignore start of function call
                        break;
                    case ')': // end of function call
                        opd1 = opdStack.pop();
                        opc1 = opd1.charAt(0);
                        buffer.append(OPC_PRIM);
                        buffer.append(elem.substring(0, elem.length() - 1)); // function name
                        buffer.append('(');
                        buffer.append(opd1.substring(1));
                        buffer.append(')');
                        opdStack.push(buffer.toString());
                        break;
                    default:
                        buffer.append(OPC_PRIM);
                        buffer.append(elem);
                        char el0 = elem.charAt(0); // first
                        if (false) {
                        } else if (Character.isJavaIdentifierStart(el0)) {
                            opdStack.push(buffer.toString());
                        } else if (Character.isDigit(el0)) { // number
                            opdStack.push(buffer.toString());
                        } else { // strange character
                            // ignore
                        }
                        break;
                } // switch ch
                ipfix ++;
            } // while ipfix
            result = opdStack.pop().substring(1); // should be the single remaining stack element
        } catch (java.util.EmptyStackException exc) {
            result = " ?stack underflow? "; // error
        }
        while (opdStack.size() != 0) {
            result += " ?error? " + opdStack.pop(); // error
        }
        if (result != null) {
            result = result.replaceAll("([\\>\\=\\<\\(\\&\\|\\!\\,])0\\-", "$1-");
            if (result.startsWith("0-")) {
                result = result.substring(1);
            }
        }
        return result;
    } // buildInfixExpression(int,int)

    /** Test method, with no arguments shows a fixed postfix expression,
     *  otherwise the postfix expression resulting from the argument string.
     *  @param args command line arguments: [funcPat] expression
     */
    public static void main(String[] args) {
        ShuntingYard parser = new ShuntingYard(2);
        ArrayList<String> postfix = null;
        if (false) {
        } else if (args.length == 0) { // default expression
            postfix = parser.getPostfixList("(3*a²+b^2)-3*(c²+d^2)+0*e");
            System.out.println(postfix);
        } else if (args.length == 1) { // expression only
            postfix = parser.getPostfixList(args[0]);
            System.out.println(postfix);
        } else if (args.length == 2) { // funcPat expression
            String funcPat = args[0];
            parser.setFunctionPattern(funcPat);
            parser.setDebug(0);
            String expr    = args[1];
            System.out.println("expression:\t" + expr);
            String postfix1 = parser.getPostfixString(";", expr);
            System.out.println("postfix1:\t"   + postfix1);
            String rebuilt1 = parser.buildInfixExpression();
            System.out.println("rebuilt1:\t"   + rebuilt1);
            String postfix2 = parser.getPostfixString(";", rebuilt1);
            System.out.println("postfix2:\t"   + postfix2);
            String rebuilt2 = parser.buildInfixExpression();
            System.out.println("rebuilt2:\t"   + rebuilt2);
            System.out.println((! rebuilt1.equals(rebuilt2)) ? "** differ" : "same");
        } // with args
    } // main

} // ShuntingYard
