/*  PolynomialParser: parser for the recognition of arithmetic expressions
 *  @(#) $Id: PolynomialParser.java 522 2010-07-26 07:14:48Z gfis $
 *  2019-05-12: ShuntingYard in separate class, unary "-."
 *  2019-05-01: "**" like "^" : exponentiation
 *  2017-05-28: javadoc 1.8
 *  2016-10-04: insert 0 before unary minus after ( = < >
 *  2016-08-25: ignore comments after '#'
 *  2015-12-06: prime factorizations were messed up
 *  2015-11-17: handle superscript digits with getNumericValue
 *  2015-07-17: relaxed rules for '*': may be omitted after a number or ')'
 *  2013-09-20: BigRational -&gt; BigIntegerUtil
 *  2013-08-14: decode %-escaped sequence and reprocess the corresponding character
 *  2013-07-03: less strict syntax "number variable" expanded to "number * variable"
 *  2009-09-24: relational operators > &gt;= = &lt;= < !=
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
import  org.teherba.ramath.symbolic.Monomial;
import  org.teherba.ramath.symbolic.Polynomial;
import  org.teherba.ramath.symbolic.ShuntingYard;
import  java.math.BigInteger;
import  java.util.Set;
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
public class PolynomialParser extends Polynomial {
    public final static String CVSID = "@(#) $Id: PolynomialParser.java 522 2010-07-26 07:14:48Z gfis $";

    /** Debugging switch */
    public int debug = 0;

    /** No-args Constructor
     */
    public PolynomialParser() {
        super();
    } // no-args Constructor

    /** Parses a string and returns a {@link Polynomial}. Error messages may
     *  be printed to STDERR if parsing could not proceed.
     *  @param input the input string, with whitespace, for example " + 17*a0^2*a1 + a2^2*a3^3 - 4*b4"
     *  @return the corresponding polynomial, 
     *  or null if the input did not have the form of a Polynomial
     *  with integer (non-variable) exponents.
     */
    public Polynomial parseFrom(String input) {
        ArrayList<String> postfix = (new ShuntingYard()).convertToPostfix("(" + input + ")");
        Stack<Polynomial> polyStack = new Stack<Polynomial>();
        Polynomial poly1 = null;
        Polynomial poly2 = null;
        // polyStack contains: ... poly1 poly2 <operator>
        String elem = null;
        int exponent = 1;
        
        try {
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
                        if (false) {
                        } else if (elem.equals("-.")) { // unary -
                        	polyStack.push(poly2.negativeOf());
                        } else if (elem.equals("-")) {
                        	polyStack.push(polyStack.pop().subtract(poly2));
                        }
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
        } catch (java.util.EmptyStackException exc) {
            super.initialize();
        }
        return this;
    } // parseFrom

    /** Test method, shows a fixed polynomial with no arguments, or the
     *  polynomial resulting from the argument string.
     *  @param args command line argument
     */
    public static void main(String[] args) {
        PolynomialParser parser = new PolynomialParser();
		parser.debug = 2;
        Polynomial poly = new Polynomial();
        if (args.length == 0) {
            poly = parser.parseFrom("(3*a²+b^2)-3*(c²+d^2)+0*e");
        } else { // with arguments
            poly = parser.parseFrom(args[0]);
        } // with args
        System.out.println(parser.toString());
        System.out.println(poly.toString());
    } // main

} // PolynomialParser
