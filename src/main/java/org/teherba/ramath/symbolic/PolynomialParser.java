/*  PolynomialParser: parser for the recognition of arithmetic expressions
 *  @(#) $Id: PolynomialParser.java 522 2010-07-26 07:14:48Z gfis $
 *  2016-08-25: ignore comments after '#'
 *  2015-12-06: prime factorizations were messed up
 *  2015-11-17: handle superscript digits with getNumericValue
 *  2015-07-17: relaxed rules for '*': may be omitted after a number or ')'
 *  2013-09-20: BigRational -> BigIntegerUtil
 *  2013-08-14: decode %-escaped sequence and reprocess the corresponding character
 *  2013-07-03: less strict syntax "number variable" expanded to "number * variable"
 *  2009-09-24: relational operators > >= = <= < !=
 *  2009-09-03: with super 2 = ^2 and super 3 = ^3
 *  2009-07-29: Java identifiers for variables
 *  2009-07-01, Georg Fischer: copied from Polynomial
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
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
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.Monomial;
import  java.math.BigInteger;
import  java.util.Set;
import  java.util.ArrayList;
import  java.util.Stack;

/** This parser recognizes elementary arithmetic expressions and relations
 *  built from the following components:
 *  <ul>
 *  <li>< <= = >= > !=</li>
 *  <li>+ - * /</li>
 *  <li>unary + -</li>
 *  <li>( )</li>
 *  <li>integer constants</li>
 *  <li>variable names consisting of letters and digits, starting with a letter;
 *  names starting with an uppercase letter can be excluded from modulo substitution (option -u)</li>
 *  <li>^n for exponentiation with a (small) integer exponent</li>
 *  <li>'#' starts a comment - all characters up to '\n' are ignored</li>
 *  </ul>
 *  The parser knows precedence rules for the operators and expands the expression
 *  into a multivariate polynomial by using the "railroad shunting yard"
 *  algorithm of Edsger Dijkstra (1961).
 *  @author Dr. Georg Fischer
 */
public class PolynomialParser extends Polynomial {
    public final static String CVSID = "@(#) $Id: PolynomialParser.java 522 2010-07-26 07:14:48Z gfis $";

    /** Debugging switch */
    private int debug = 0;

    /** No-args Constructor
     */
    public PolynomialParser() {
        super();
    } // no-args Constructor

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
    private Stack    /*<1.5*/<String>/*1.5>*/ operStack = null;
    /** append the operands and postfix operators to this list */
    private ArrayList/*<1.5*/<String>/*1.5>*/ postfix   = null;

    /** Gets the postfix list of operands and operators.
     *  @return postfix polish notation of the formula
     */
    public ArrayList/*<1.5*/<String>/*1.5>*/ getPostfix() {
        return postfix;
    } // getPostfix

    /** Pushes an operator and its precedence.
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void pushOper(String precOper) {
        operStack.push(precOper);
    } // pushOper

    /** Pops all operators with lower precedence, and pushes the current operator
     *  @param precOper precedence (1 lowercase letter) and operator (1-2 characters)
     */
    private void replaceLower(String precOper) {
        boolean busy = true;
        while (busy && ! operStack.empty()) {
            String elem = operStack.peek();
            if (precOper.charAt(0) <= elem.charAt(0) && elem.charAt(1) != '(') {
                elem = operStack.pop();
                postfix.add(elem.substring(1));
            } else { // new precedence is higher
                busy = false;
            }
        } // while
        pushOper(precOper);
    } // replaceLower

    /** Reads an input string containing an arithmetic expression with infix notation
     *  and fills a list of output symbols representing the same expression in postfix notation (reverse polish notation).
     *  The railroad shunting yard algorithm is that of Edsger Dijkstra (1961) as described in
     *  <a href="http://en.wikipedia.org/wiki/Shunting-yard_algorithm">Wikipedia</a>.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  <p>
     *  The precedence of operators (in <em>precOper, operStack</em>) is indicated
     *  by the ASCII order of lowercase letters according to the following table:
     *  <table>
     *  <tr><td>|                   </td><td>j</td></tr>
     *  <tr><td>&amp;               </td><td>k</td></tr>
     *  <tr><td>&lt;= &gt;= == !=   </td><td>l</td></tr>
     *  <tr><td>* /                 </td><td>p</td></tr>
     *  <tr><td>^                   </td><td>q</td></tr>
     *  <tr><td>(                   </td><td>y</td></tr>
     *  </table>
     */
    private void shuntingYardAlgorithm(String input) {
        StringBuffer buffer = new StringBuffer(16); //accumulate variable names, numbers and operators here
        String elem = null; // next element on stack / in postfix list
        char ch = ' ';
        boolean busy = false;
        boolean readOff = true;
        operStack = new Stack/*<1.5*/<String>/*1.5>*/();
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
                                if (prev != '(') {
                                    replaceLower("m+");
                                } // else ignore unary +
                                break;
                            case '-':
                                if (prev == '(') {
                                    postfix.add("0"); // a zero is inserted before a unary "m-"
                                }
                                replaceLower("m-");
                                break;
                            case '*':
                                replaceLower("p*");
                                break;
                            case '/':
                                replaceLower("p/");
                                break;
                            case '^': // right-associative ???
                                replaceLower("q^");
                                break;
                            case '¹': // '\u00b9', super 1
                                replaceLower("q^");
                                buffer.setLength(0);
                                buffer.append('1');
                                state = State.IN_EXPONENT;
                                break;
                            case '²': // '\u00b2', super 2
                                replaceLower("q^");
                                buffer.setLength(0);
                                buffer.append('2');
                                state = State.IN_EXPONENT;
                                break;
                            case '³': // '\u00b3', super 3
                                replaceLower("q^");
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
                                        postfix.add(elem.substring(1));
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
                                    replaceLower("q^");
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
                            postfix.add(buffer.toString());
                            replaceLower("p*");
                            readOff = false;
                            state = State.IN_START;
                        } else {
                            postfix.add(buffer.toString());
                            readOff = false;
                            state = State.IN_START;
                        }
                        break; // IN_NAME

                    case IN_NUMBER:
                        switch (ch) {
                            case '(':
                                postfix.add(buffer.toString());
                                replaceLower("p*");
                                readOff = false;
                                state = State.IN_START;
                                break;
                            case '¹': // '\u00b9', super 1, right-associative ???
                            case '²': // '\u00b2', super 2, right-associative ???
                            case '³': // '\u00b3', super 3, right-associative ???
                                postfix.add(buffer.toString());
                                readOff = false;
                                state = State.IN_START;
                                break;
                            default:
                                if (false) {
                                } else if (ch >= '\u2070' && ch <= '\u2079') {
                                    postfix.add(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                } else if (ch >= '0' && ch <= '9') { // Character.isDigit(ch)) {
                                    buffer.append(ch);
                                } else if (Character.isLetter(ch)) { // imply a multiplication operator
                                    postfix.add(buffer.toString());
                                    replaceLower("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else {
                                    postfix.add(buffer.toString());
                                    readOff = false;
                                    state = State.IN_START;
                                }
                                break;
                        } // switch ch
                        break; // IN_NUMBER

                    case IN_EXPONENT: // similiar to, but not identical with IN_NUMBER
                        switch (ch) {
                            case '(':
                                postfix.add(buffer.toString());
                                replaceLower("p*");
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
                                    postfix.add(buffer.toString());
                                    replaceLower("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else if (Character.isLetter(ch)) { // imply a multiplication operator
                                    postfix.add(buffer.toString());
                                    replaceLower("p*");
                                    readOff = false;
                                    state = State.IN_START;
                                } else {
                                    postfix.add(buffer.toString());
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
                                    replaceLower("l<=");
                                } else if (oper.equals(">=")) {
                                    replaceLower("l>=");
                                } else if (oper.equals("==")) {
                                    replaceLower("l=" );
                                } else if (oper.equals("=<")) {
                                    replaceLower("l<=");
                                } else if (oper.equals("=>")) {
                                    replaceLower("l>=");
                                } else if (oper.equals("!=")) {
                                    replaceLower("l!=");
                                } else if (oper.equals("<>")) {
                                    replaceLower("l!=");
                                } else if (oper.equals("><")) {
                                    replaceLower("l!=");
                                } else { // >> <<
                                    System.err.println("invalid relational operator " + oper);
                                }
                                break;
                        //  case '!': // not - later?
                        //  case '|': // or  - later?
                            case '&':
                                buffer.append(ch);
                                oper = buffer.toString();
                                if (false) {
                                } else if (oper.equals("&&")) {
                                    replaceLower("k&");
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
                                        replaceLower("l" + buffer.substring(0, 1));
                                        break;
                                    case '!': // maybe supported later?
                                        break;
                                    case '&':
                                        replaceLower("k" + buffer.substring(0, 1));
                                        break;
                                    case '|': // maybe supported later?
                                        replaceLower("j" + buffer.substring(0, 1));
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
                            replaceLower("p*");
                        } else if (ch == '(') { // following "("
                            replaceLower("p*");
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
                        System.err.println("invalid state " + state + " in PolynomialParser.shuntingYardAlgorithm");
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
                postfix.add(elem.substring(1));
            }
        } // while
    } // shuntingYardAlgorithm

    /** Parses a string and returns a polynomial. Error messages may
     *  be printed to STDERR if parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return the corresponding polynomial
     */
    public Polynomial parseFrom(String input) {
        postfix = new ArrayList/*<1.5*/<String>/*1.5>*/(256);
        Stack/*<1.5*/<Polynomial>/*1.5>*/ polyStack = new Stack/*<1.5*/<Polynomial>/*1.5>*/();
        Polynomial poly1 = null;
        Polynomial poly2 = null;
        // polyStack contains: ... poly1 poly2 <operator>
        String elem = null;
        int exponent = 1;
        shuntingYardAlgorithm("(" + input + ")");
        int ipfix = 0;
        while (ipfix < postfix.size()) {
            elem = postfix.get(ipfix ++);
            if (debug >= 2) {
                System.out.println("elem: " + elem + ", " + polyStack);
            }
            char ch = elem.charAt(0);
            switch (ch) {
                // relations
                case '=':
                    poly2 = polyStack.pop();
                    poly1 = polyStack.pop().subtract(poly2);
                    if (false) {
                    } else {
                        poly1.setRelation(Relator.EQ_0);
                    }
                    polyStack.push(poly1);
                    break;
                case '!':
                    poly2 = polyStack.pop();
                    poly1 = polyStack.pop().subtract(poly2);
                    if (false) {
                    } else if (elem.equals("!=")) {
                        poly1.setRelation(Relator.NE_0);
                    } else {
                        System.err.println("PolynomialParser.parseFrom: invalid relation \"" + elem + "\"");
                    }
                    polyStack.push(poly1);
                    break;
                case '>':
                    poly2 = polyStack.pop();
                    poly1 = polyStack.pop().subtract(poly2);
                    if (false) {
                    } else if (elem.equals(">")) {
                        poly1.setRelation(Relator.GT_0);
                    } else if (elem.equals(">=")) {
                        poly1.setRelation(Relator.GE_0);
                    } else {
                        System.err.println("PolynomialParser.parseFrom: invalid relation \"" + elem + "\"");
                    }
                    polyStack.push(poly1);
                    break;
                case '<':
                    poly2 = polyStack.pop();
                    poly1 = polyStack.pop().subtract(poly2).negativeOf(); // 1 < 2 ... 1 - 2 < 0 ... -1 + 2 > 0
                    if (false) {
                    } else if (elem.equals("<")) {
                        poly1.setRelation(Relator.GT_0);
                    } else if (elem.equals("<=")) {
                        poly1.setRelation(Relator.GE_0);
                    } else {
                        System.err.println("PolynomialParser.parseFrom: invalid relation \"" + elem + "\"");
                    }
                    polyStack.push(poly1);
                    break;

                // additive operators
                case '+':
                    poly2 = polyStack.pop();
                    polyStack.push(polyStack.pop().add     (poly2));
                    break;
                case '-':
                    poly2 = polyStack.pop();
                    polyStack.push(polyStack.pop().subtract(poly2));
                    break;

                // multiplicative operators
                case '*':
                    poly2 = polyStack.pop();
                    polyStack.push(polyStack.pop().multiply(poly2));
                    break;
                case '/':
                    poly2 = polyStack.pop();
                    polyStack.push(polyStack.pop().divide  (poly2));
                    break;
                // exponentiation
                case '^':
                    poly2 = polyStack.pop();
                    if (poly2.isConstant()) {
                        BigInteger brexp = poly2.getConstant();
                        exponent = brexp.intValue();
                        polyStack.push(polyStack.pop().pow(exponent));
                    } else {
                        System.err.println("PolynomialParser.parseFrom:"
                                + " exponent must be single natural number instead of \"" + poly2.toString() + "\"");
                    }
                    break;
                default:
                    if (false) {
                    } else if (Character.isJavaIdentifierStart(ch)) {
                        polyStack.push(new Polynomial(new Monomial(elem)));
                    } else if (Character.isDigit              (ch)) {
                        polyStack.push(new Polynomial(new Monomial(elem)));
                    } else { // strange character
                        System.err.println("PolynomialParser.parseFrom: strange operand \"" + elem + "\"");
                    }
                    break;
            } // switch ch
        } // while ipfix
        poly2 = polyStack.pop();
        setMonomials(poly2.getMonomials());
        setPseudo   (poly2.getPseudo   ());
        setRelation (poly2.getRelation ());
        return this;
    } // parseFrom

    /** Test method, shows a fixed polynomial with no arguments, or the
     *  polynomial resulting from the argument string.
     *  @param args command line argument
     */
    public static void main(String[] args) {
        PolynomialParser parser = new PolynomialParser();
        Polynomial poly = new Polynomial();
        if (args.length == 0) {
            poly = parser.parseFrom("(3*a²+b^2)-3*(c²+d^2)+0*e");
        } else { // with arguments
            poly = parser.parseFrom(args[0]);
        } // with args
        System.out.println(parser.getPostfix());
        System.out.println(parser.toString());
        System.out.println(poly.toString());
    } // main

} // PolynomialParser
