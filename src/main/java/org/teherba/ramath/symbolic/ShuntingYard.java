/*  ShuntingYard: parser for the recognition of arithmetic and boolean expressions
 *  @(#) $Id: ShuntingYard.java 522 2010-07-26 07:14:48Z gfis $
 *  2019-05-12: unary -, renaming; extracted from PolynomialParser
 *  2009-07-01, Georg Fischer: copied from Polynomial
 */
/*
 * Copyright 2019 Dr. Georg Fischer
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
import  java.util.ArrayList;
import  java.util.Stack;

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
            , IN_NAME       // after the first letter of a name
            , IN_NUMBER     // after the first digit of a number
            , IN_EXPONENT   // after the first superscripted digit
            , IN_OPERATOR   // after first character of a relational or boolean operator, or after '%'
            , IN_CLOSE      // after ')' - eventually insert '*'
            , IN_COMMENT    // after '#' - ignore all up to "\n" or end of string
            };

    /** pushdown stack for operators and parentheses */
    private Stack    <String> operStack;
    /** append the operands and postfix operators to this list */
    private ArrayList<String> postfix;

    /** No-args Constructor
     */
    public ShuntingYard() {
		postfix   = new ArrayList<String>(256);
		operStack = new Stack    <String>();
    } // no-args Constructor

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
    } // pushOper

    /** Pops all operators with lower precedence, and pushes the parameter operator
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void popLowerSameAndPush(String precOper) {
        boolean busy = true;
        while (busy && ! operStack.empty()) {
            String elem = operStack.peek();
            if (precOper.charAt(0) <= elem.charAt(0) && elem.charAt(1) != '(') {
                elem = operStack.pop();
                postfixAppend(elem.substring(1));
            } else { // new precedence is higher
                busy = false;
            }
        } // while
        pushOper(precOper);
    } // popLowerSameAndPush

    /** Reads an input string containing an arithmetic expression with infix notation
     *  and fills a list of output symbols representing the same expression in postfix notation (reverse polish notation).
     *  The railroad shunting yard algorithm is that of Edsger Dijkstra (1961) as described in
     *  <a href="http://en.wikipedia.org/wiki/Shunting-yard_algorithm">Wikipedia</a>.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  <p>
     *  The precedence of operators (in <em>precOper, operStack</em>) is indicated
     *  by the ASCII order of lowercase letters according to the following table:
     *  <table><caption>Operator Precedence and corresponding Codes</caption>
     *  <tr><td>||                  </td><td>j</td></tr>
     *  <tr><td>&amp;&amp;          </td><td>k</td></tr>
     *  <tr><td>&lt;= &gt;= == != &gt; &lt;  </td><td>l</td></tr>
     *  <tr><td>+ -                 </td><td>m</td></tr>
     *  <tr><td>* /                 </td><td>p</td></tr>
     *  <tr><td>^                   </td><td>q</td></tr>
     *  <tr><td>-. (unary) !        </td><td>x</td></tr>
     *  <tr><td>(                   </td><td>y</td></tr>
     *  </table>
     */
    public ArrayList<String> convertToPostfix(String input) {
        StringBuffer buffer = new StringBuffer(16); //accumulate variable names, numbers and operators here
        String elem = null; // next element on stack / in postfix list
        char ch = ' ';
        boolean busy = false;
        boolean readOff = true;
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
                switch (state) {
                    case IN_START:
                        switch (ch) {
                            case '<':
                            case '>':
                            case '=':
                            case '!':
                            case '&':
                            case '*':
                        //  case '|':
                                buffer.setLength(0);
                                buffer.append(ch);
                                state = State.IN_OPERATOR;
                                break;
                            case '%':
                                int ich = 32; // ' '
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
                                if (   prev == '('
                                    || prev == '='
                                    || prev == '<'
                                    || prev == '>'
                                        ) {
                                    postfixAppend("0"); // a zero is inserted before an unary "-"
                                    popLowerSameAndPush("m-"); // binary "-"
                                } else if (prev == '*' || prev == '/') {
                                    popLowerSameAndPush("x--"); // unary "-"
                                } else {
                                    popLowerSameAndPush("m-"); // binary "-"
                                }
                                break;
                            case '/':
                                popLowerSameAndPush("p/");
                                break;
                            case '^': // right-associative ???
                                popLowerSameAndPush("q^");
                                break;
                            case '¹': // '\u00b9', super 1
                                popLowerSameAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('1');
                                state = State.IN_EXPONENT;
                                break;
                            case '²': // '\u00b2', super 2
                                popLowerSameAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('2');
                                state = State.IN_EXPONENT;
                                break;
                            case '³': // '\u00b3', super 3
                                popLowerSameAndPush("q^");
                                buffer.setLength(0);
                                buffer.append('3');
                                state = State.IN_EXPONENT;
                                break;
                            case '(':
                                pushOper("y("); // higher than all other precedences
                                break;
                            case ')': // find the corresponding opening parenthesis on the stack
                                busy = true;
                                while (busy && ! operStack.empty()) {
                                    elem = (String) operStack.pop();
                                    if (elem.charAt(1) == '(') {
                                        busy = false;
                                    } else { // other operation
                                        postfixAppend(elem.substring(1));
                                    }
                                } // while
                                state = State.IN_CLOSE;
                                break;
                            case '#':
                                state = State.IN_COMMENT;
                                break;
                            default:
                                if (false) {
                                } else if (Character.isJavaIdentifierStart(ch)) {
                                    buffer.setLength(0);
                                    buffer.append(ch);
                                    state = State.IN_NAME;
                                } else if (ch >= '\u2070' && ch <= '\u2079') {
                                    popLowerSameAndPush("q^");
                                    buffer.setLength(0);
                                    buffer.append(Character.forDigit(ch - 0x2070, 10));
                                    state = State.IN_EXPONENT;
                                } else if (Character.isDigit(ch)) {
                                    buffer.setLength(0);
                                    buffer.append(ch);
                                    state = State.IN_NUMBER;
                                } else { // invalid character
                                    System.err.println("invalid character in expression: " + input.substring(ipos));
                                }
                                break;
                        } // switch ch
                        break; // IN_START

                    case IN_NAME:
                        if (false) {
                        } else if (Character.isJavaIdentifierPart(ch)) {
                            buffer.append(ch);
                        } else if (ch == '(') {
                            postfixAppend(buffer.toString());
                            popLowerSameAndPush("p*");
                            readOff = false;
                            state = State.IN_START;
                        } else {
                            postfixAppend(buffer.toString());
                            readOff = false;
                            state = State.IN_START;
                        }
                        break; // IN_NAME

                    case IN_NUMBER:
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
                                } else if (ch >= '\u2070' && ch <= '\u2079') {
                                    postfixAppend(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                } else if (ch >= '0' && ch <= '9') { // Character.isDigit(ch)) {
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
                        break; // IN_NUMBER

                    case IN_EXPONENT: // similiar to, but not identical with IN_NUMBER
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
                                } else if (ch >= '\u2070' && ch <= '\u2079') {
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
                        break; // IN_NUMBER

                    case IN_OPERATOR:
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
                                    System.err.println("invalid relational operator " + oper);
                                }
                                break;
                        //  case '!': // not - later?
                        //  case '|': // or  - later?
                            case '*':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("**")) { // exponentiation
                                    popLowerSameAndPush("q^");
                                } else {
                                    System.err.println("invalid multiplication operator " + oper);
                                }
                                break;
                            case '-':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("+-")) { // ignore "+"
                                    popLowerSameAndPush("m-");
                                } else if (oper.equals("*-")) { // unary "-"
                                    popLowerSameAndPush("p*");
                                    popLowerSameAndPush("x-."); // unary "-", negate
                                } else if (oper.equals("/-")) { // unary "-"
                                    popLowerSameAndPush("p/");
                                    popLowerSameAndPush("x-."); // unary "-", negate
                                } else {
                                    System.err.println("invalid unary minus " + oper);
                                }
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
                                    System.err.println("invalid unary plus " + oper);
                                }
                                break;
                            case '&':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("&&")) {
                                    popLowerSameAndPush("k&");
                                } else { // >> <<
                                    System.err.println("invalid boolean operator " + oper);
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
                                        popLowerSameAndPush("p" + buffer.substring(0, 1));
                                        break;
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
                        break; // IN_OPERATOR

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

                    case IN_COMMENT: // after '#' - skip until "\n" or EOS
                        if (false) {
                        } else if (ch == '\n') {
                            state = State.IN_START;
                        }
                        break; // IN_COMMENT

                    default: // should never be reached
                        System.err.println("invalid state " + state + " in ShuntingYard.shuntingYardAlgorithm");
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
            if (debug >= 1) {
                System.out.println(state + "," + ch + ", \toperStack=" + operStack + ", \tpostfix=" + postfix);
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
        return postfix;
    } // convertToPostfix

    /** Test method, with no arguments shows a fixed postfix expression,
     *  otherwise the postfix expression resulting from the argument string.
     *  @param args command line arguments
     */
    public static void main(String[] args) {
        ShuntingYard parser = new ShuntingYard();
        parser.debug = 2;
        ArrayList<String> postfix = new ArrayList<String>(64);
        if (args.length == 0) {
            postfix = parser.convertToPostfix("(3*a²+b^2)-3*(c²+d^2)+0*e");
        } else { // with arguments
            postfix = parser.convertToPostfix(args[0]);
        } // with args
        System.out.println(postfix);
    } // main

} // ShuntingYard
