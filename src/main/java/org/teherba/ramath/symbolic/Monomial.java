/*  Monomial: a product with a signed numeric coefficient and optional exponentiated variable(s)
 *  @(#) $Id: Monomial.java 522 2010-07-26 07:14:48Z gfis $
 *  2015-09-03: isNegative
 *  2015-08-16: toFactoredString() with powers of prime factors
 *  2015-07-17: degree
 *  2015-03-25: firstName
 *  2013-09-20: BigRational -> BigIntegerUtil
 *  2013-08-20: renamed from Term
 *  2013-08-12: getVariablePowers
 *  2009-07-01, Georg Fischer: copied from ContinuedFraction
 */
/*
 * Copyright 2009 Dr. Georg Fischer <punctum at punctum dot kom>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.Name of the variable, or value of integer constant
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
import  org.teherba.ramath.symbolic.Factor;
import  org.teherba.ramath.BigIntegerUtil;
import  org.teherba.ramath.BigRational;
import  org.teherba.ramath.Coefficient;
import  org.teherba.ramath.PrimeFactorization;
import  org.teherba.ramath.util.Permutator; // for orderTest
import  java.io.Serializable;
import  java.math.BigInteger;
import  java.util.ArrayList;
import  java.util.Arrays;
import  java.util.Iterator;
import  java.util.Set;
import  java.util.TreeMap;

/** Bean for a {@link Polynomial} with only one summand (term).
 *  A monomial consists of a product with a signed {@link BigInteger} coefficient
 *  and optional variable(s) with positive exponents.
 *  Initially, a monomial has the value +1^1 (0^1 may also be set).
 *  A monomial may consist of the constant zero.
 *  @author Dr. Georg Fischer
 */
public class Monomial implements Cloneable, Serializable {
    private static final long serialVersionUID = 1L;
    public final static String CVSID = "@(#) $Id: Monomial.java 522 2010-07-26 07:14:48Z gfis $";

    /** factor of the product of variables */
    private Coefficient/*ratint*/ coefficient;

    /** The sorted map for all variables in lexicographic order of their
     *  names which are mapped to (positive) exponent values
     */
    private TreeMap<String, Integer> vars;

    //============================
    // Construction
    //============================

    /** No-args Constructor - yields a scalar "1"
     */
    public Monomial() {
        setCoefficient(1);
        vars = new TreeMap<String, Integer>();
    } // no-args Constructor

    /** Constructor with variable name or (BigInteger) number and (int) exponent.
     *  @param name variable name or (number with optional sign, but no fraction)
     *  @param exponent raise variable or number to this power
     */
    public Monomial(String name, int exponent) {
        vars = new TreeMap<String, Integer>();
        if (isNumber(name)) {
            setCoefficient(Coefficient.valueOf((new BigInteger(name)).pow(exponent)));
            // vars remains empty
        } else {
            setCoefficient(1);
            this.putExponent(name, exponent);
        }
    } // Constructor(name, exponent)

    /** Constructor with coefficient, variable name and exponent.
     *  @param coeff small integer coefficient, maybe negative
     *  @param name variable name
     *  @param exponent raise variable (but not the coefficient) to this power
     */
    public Monomial(int coeff, String name, int exponent) {
        setCoefficient(coeff);
        vars = new TreeMap<String, Integer>();
        if (name.length() > 0 && exponent != 0) {
            this.putExponent(name, exponent);
        }
    } // Constructor(int, name, exponent)

    /** Constructor with coefficient, variable name and exponent.
     *  @param bint BigInteger coefficient, maybe negative
     *  @param name variable name
     *  @param exponent raise variable (but not the coefficient) to this power
     */
    public Monomial(BigInteger bint, String name, int exponent) {
        setCoefficient(Coefficient.valueOf(bint));
        vars = new TreeMap<String, Integer>();
        if (name.length() > 0 && exponent != 0) {
            this.putExponent(name, exponent);
        }
    } // Constructor(bint, name, exponent)

    /** Constructor with a single name only.
     *  @param name variable name or integer constant
     */
    public Monomial(String name) {
        this(name, 1);
    } // Constructor(name)

    /** Constructor with variable names
     *  @param names variable names; the monomial is the product of
     *  these variables with coeeficient +1
     */
    public Monomial(String[] names) {
        setCoefficient(1);
        vars = new TreeMap<String, Integer>();
        int ivar = names.length - 1;
        while (ivar >= 0) {
            this.putExponent(names[ivar], 1);
            ivar --;
        } // while ivar
    } // Constructor([] names)

    /** Constructor with {@link BigInteger}
     *  @param bint constant integer coefficient
     */
    public Monomial(Coefficient/*ratint*/ bint) {
        this();
        setCoefficient(bint);
    } // Constructor(bint)

    /** Deep copy of the monomial with coefficient and all variables.
     *  @return independant copy of the monomial
     */
    public Monomial clone() {
        Monomial result = new Monomial();
        result.setCoefficient(this.getCoefficient());
        TreeMap<String, Integer> resultVars = new TreeMap<String, Integer>();
        Iterator<String> iter = vars.keySet().iterator();
        while (iter.hasNext()) {
            String name = iter.next();
            resultVars.put(name, new Integer(this.getExponent(name)));
        } // while iter
        result.setMap(resultVars);
        return result;
    } // clone

    /** Removes all variables, turns the monomial into a constant.
     */
    public void clear() {
        vars.clear();
    } // clear

    //=============================
    // Bean and lightweight methods
    //=============================

    /** Determines whether a string is a variable or an integer constant
     *  @param name string to be examined
     *  @return true if the string starts with a "-" or a digit,
     *  which means that it contains an integer constant,
     *  false otherwise
     */
    private static boolean isNumber(String name) {
        boolean result = false;
        if (name.length() > 0) {
            char ch = name.charAt(0);
            result = ch == '-' || Character.isDigit(ch);
        }
        return result;
    } // isNumber

    /** Sets the coefficient.
     *  @param coefficient number before the variables
     */
    public void setCoefficient(Coefficient/*ratint*/ coefficient) {
        this.coefficient = (coefficient);
        if (coefficient.equals(Coefficient.ZERO)) {
            vars = new TreeMap<String, Integer>();
        }
    } // setCoefficient

    /** Sets the coefficient.
     *  @param coefficient number before the variables
     */
    public void setCoefficient(long coefficient) {
        this.coefficient = Coefficient.valueOf(BigInteger.valueOf(coefficient));
        if (coefficient == 0L) {
            vars = new TreeMap<String, Integer>();
        }
    } // setCoefficient

    /** Gets the coefficient.
     *  @return rational factor of the product of variables
     */
    public Coefficient/*ratint*/ getCoefficient() {
        return this.coefficient;
    } // getCoefficient

    /** Gets the name of the first variable, if any.
     *  @return name of the first variable or null
     */
    public String firstName() {
        String result = null; // if no variable is present
        if (vars.size() >= 1) {
            result = vars.firstKey();
        }
        return result;
    } // firstName

    /** Gets the exponent of a variable.
     *  @param name variable's name
     *  @return exponent of the variable
     */
    public int getExponent(String name) {
        int result = 0; // if the variable is not present
        Integer exp = vars.get(name);
        if (exp != null) {
            result = exp.intValue();
        }
        return result;
    } // getExponent

    /** Puts the variable name and its exponent into the map.
     *  @param name variable name
     *  @param exponent exponent of the variable,
     *  or 0 to remove the variable from the map
     */
    protected void putExponent(String name, int exponent) {
        if (exponent > 0) {
            vars.put(name, new Integer(exponent));
        } else if (exponent == 0) {
            vars.remove(name);
        } else {
            throw new IllegalArgumentException("exponent may not be negative");
        }
    } // putExponent

    /** Returns the number of variables in the monomial
     *  @return number of variables &gt;= 0
     */
    public int size() {
        return vars.size();
    } // size

    /** Gets the internal mapping from variable names to exponents.
     *  @return sorted map
     */
    public TreeMap<String, Integer> getMap() {
        return vars;
    } // getMap

    /** Sets the internal map of variables.
     *  @param map map from variable names to exponents
     */
    public void setMap(TreeMap<String, Integer> map) {
        vars = map;
    } // setMap

    /** Gets the key set of the internal mapping from variable names to exponents.
     *  @return set of variable names
     */
    public Set<String> keySet() {
        return vars.keySet();
    } // keySet

    /** Returns the signum function of the coefficient.
     *  @return -1, 0 or 1 as the value of the coefficient is negative, zero or positive.
     */
    public int signum() {
        return this.getCoefficient().compareTo(Coefficient.ZERO);
    } // signum

    /** Determines whether the monomial contains no variables
     *  @return false if the monomial is constant
     */
    public boolean isConstant() {
        return vars.size() == 0;
    } // isConstant

    /** Determines whether the monomial has a negative sign
     *  @return true if the monomial is negative, false otherwise
     */
    public boolean isNegative() {
        return this.getCoefficient().compareTo(Coefficient.ZERO) < 0;
    } // isNegative

    /** Determines whether the monomial contains exactly one variable
     *  @return false if the monomial is constant or has more than one variable
     */
    public boolean isUniVariate() {
        return vars.size() == 1;
    } // isUnivariate

    /** Determines whether the monomial is a constant 0.
     *  @return true if the monomial equals 0, false otherwise
     */
    public boolean isZero() {
        return this.getCoefficient().equals(Coefficient.ZERO);
    } // isZero

    /** Determines the degree, that is the sum of exponents of the individual factors
     *  @param upperSubst whether the exponents of uppercase variables should be counted
     *  @return degree >= 0
     */
    public int degree(boolean upperSubst) {
        int result = 0;
        Iterator <String> viter = vars.keySet().iterator();
        while (viter.hasNext()) {
            String name = viter.next();
            if (upperSubst || name.compareTo("a") >= 0) {
                result += this.getExponent(name);
                // System.out.println("degree: " + name + "^" + this.getExponent(name));
            } // upperSubst
        } // while viter
        return result;
    } // degree(boolean)

    /** Determines the degree, that is the sum of exponents
     *  @return degree >= 0
     */
    public int degree() {
        return this.degree(true);
    } // degree()

    //=================
    // Monomial Order
    //=================
    /** Gets the signature, that is the concatenation of
     *  <ul>
     *  <li>a list of elements: "/" variable name "." exponent
     *  sorted by the reverse lexicographical order of the names
     *  </li>
     *  </ul>
     *  This signature defines the monomial order in a {@link Polynomial}.
     *  @return for example "/x4.08/b.02/a.04" for the monomial "16384*a^4*b^2*x4^8"
     */
    public String signature() {
        return characteristic(false, true);
    } // signature

    /** Special signature for constant {@link Monomial}s
     *  (coefficient without variables, the empty String).
     */
    public static final String CONSTANT_SIGNATURE = (new Monomial("1")).signature(); // the empty string: ""

    /** Gets some characteristic value which is independant of the variable names,
     *  and which characterizes exponents and the absolute value of the coefficient (but not the sign),
     *  for normalization and equivalence checking as a separated string concatenation of
     *  <ul>
     *  <li>a list of elements: "/" variable name "." exponent
     *  sorted by the reverse lexicographical order of their names
     *  </li>
     *  <li>optionally a ";" followed by the absolute value of the coefficient</li>
     *  </ul>
     *  @param withCoeff whether to append the absolute value of the coefficient
     *  @param withVars  whether to append the variable names (otherwise their exponents only)
     *  @return for example (true, false): "/08/02/04;16384" for the monomial "16384*a^4*b^2*x4^8"
     */
    public String characteristic(boolean withCoeff, boolean withVars) {
        StringBuffer result = new StringBuffer(32); // resulting list of exponents
        Factor[] factors = new Factor[vars.size()];
        Iterator <String> viter = vars.keySet().iterator();
        int expCount = 0;
        int expSum   = 0;
        int exp = 0;
        int ifact = 0;
        Factor fact1 = null;
        while (viter.hasNext()) {
            String name = viter.next();
            exp = this.getExponent(name);
            expCount ++;
            expSum += exp;
            fact1 = new Factor(name, exp);
            factors[ifact ++] = fact1;
        } // while viter
        Arrays.sort(factors, fact1); // with Comparator (= Factor)
        ifact = 0;
        while (ifact < factors.length) {
            fact1 = factors[ifact ++];
            result.insert(0, String.format("%02x", fact1.getExponent())); // exponents <= 99
            if (withVars) {
                result.insert(0, '.');
                result.insert(0, fact1.getName());
            }
            result.insert(0, '/');
        } // while ifact
        // result.insert(0, String.format("%03x", expSum)); // better without for Groebner bases
        if (withCoeff) {
            result.append(';');
            result.append(this.getCoefficient().toString().replaceFirst("\\-", ""));
        }
        return result.toString();
    } // characteristic(2)

    /** Gets some characteristic value which is independant of the variable names,
     *  and which characterizes exponents and the absolute value of the coefficient (but not the sign),
     *  for normalization and equivalence checking as a separated string concatenation of
     *  <ul>
     *  <li>the exponents (sorted increasingly)</li>
     *  <li>the absolute value of the coefficient</li>
     *  </ul>
     *  @return for example "/08/02/04;16384" for the monomial "16384*a^4*b^2*x4^8"
     */
    public String characteristic() {
        return characteristic(true, false);
    } // characteristic()

    //========================
    // Arithmetic operations
    //========================
    /** Adds another monomial with the same signature
     *  by adding the coefficients.
     *  An exception is thrown if the two signatures differ.
     *  @param mono2 add this monomial
     *  @return this object, now containing the sum
     */
    public Monomial addTo(Monomial mono2) {
        Monomial result = this;
        if (! this.signature().equals(mono2.signature())) {
            throw new IllegalArgumentException("Monomial: signatures of " + this.toString()
                + " and " + mono2.toString() + " must be equal: "
                + "\"" + this.signature() + "\" != \"" + mono2.signature() + "\"");
        /*
            System.out.println("signatures of " + this.toString()
                + " and " + mono2.toString() + " must be equal: "
                + "\"" + this.signature() + "\" != \"" + mono2.signature() + "\"");
        */
        } else {
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient().add(mono2.getCoefficient())));
            if (result.isZero()) {
                result.clear(); // remove all variables
            }
        }
        return result;
    } // add(Monomial)

    /** Adds another monomial with the same signature
     *  by adding the coefficients.
     *  An exception is thrown if the two signatures differ.
     *  @param mono2 add this monomial
     *  @return new object that contains the sum
     */
    public Monomial add(Monomial mono2) {
        Monomial result = this.clone();
        if (! this.signature().equals(mono2.signature())) {
            throw new IllegalArgumentException("signatures of both monomials must be equal");
        } else {
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient().add(mono2.getCoefficient())));
            if (result.isZero()) {
                result.clear(); // remove all variables
            }
        }
        return result;
    } // add(Monomial)

    /** Subtracts another monomial with the same signature
     *  by subtracting the coefficient.
     *  An exception is thrown if the two signatures differ.
     *  @param mono2 add this monomial
     *  @return this object, now containing the difference
     */
    public Monomial subtractFrom(Monomial mono2) {
        Monomial result = this;
        if (! this.signature().equals(mono2.signature())) {
            throw new IllegalArgumentException("signatures of both monomials must be equal");
        } else {
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient().subtract(mono2.getCoefficient())));
            if (result.isZero()) {
                result.clear(); // remove all variables
            }
        }
        return result;
    } // subtractFrom(Monomial)

    /** Subtracts another monomial with the same signature
     *  by subtracting the coefficient.
     *  An exception is thrown if the two signatures differ.
     *  @param mono2 subtract this monomial
     *  @return new object that contains the difference
     */
    public Monomial subtract(Monomial mono2) {
        Monomial result = this.clone();
        if (! this.signature().equals(mono2.signature())) {
            throw new IllegalArgumentException("signatures of both monomials must be equal");
        } else {
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient().subtract(mono2.getCoefficient())));
            if (result.isZero()) {
                result.clear(); // remove all variables
            }
        }
        return result;
    } // subtract(Monomial)

    /** Inverses the sign of (the coefficient of) <em>this</em> {@link Monomial}.
     *  @return <em>this</em> object with inverted sign
     */
    public Monomial negativeOf() {
        this.setCoefficient(Coefficient.valueOf(this.getCoefficient().negate()));
        return this;
    } // negativeOf

    /** Inverses the sign of (the coefficient of) <em>this</em> {@link Monomial}.
     *  @return a copy of the object with inverted sign
     */
    public Monomial negate() {
        Monomial result = this.clone();
        result.setCoefficient(Coefficient.valueOf(result.getCoefficient().negate()));
        return result;
    } // negate

    /** Multiplies this Monomial <em>in place</em> with an exponentiated variable or number.
     *  This method can only be used internally since it does not clone.
     *  @param name2 variable name or number constant
     *  @param exp2 raise variable to this power
     *  @return this object, now containing the product
     */
    public Monomial multiplyBy(String name2, int exp2) {
        Monomial result = this;
        if (isNumber(name2)) {
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient()
                    .multiply((new Coefficient(name2)).pow(exp2))));
            if (result.isZero()) {
                result.clear(); // remove all variables
            }
        } else if (exp2 == 0) { // *= 1 means: leave it unchanged
            // result.setCoefficient(1);
            // result.clear();
        } else {
            if (result.getExponent(name2) != 0) {
                result.putExponent(name2, new Integer(result.getExponent(name2) + exp2));
            } else {
                result.putExponent(name2, new Integer(exp2));
            }
        }
        return result;
    } // multiplyBy(name, exponent)

    /** Multiplies this Monomial <em>in place</em> with a BigInteger.
     *  This method can only be used internally since it does not clone.
     *  @param number a constant number
     *  @return this object, now containing the product
     */
    public Monomial multiplyBy(BigInteger number) {
        Monomial result = this;
        result.setCoefficient(Coefficient.valueOf(this.getCoefficient()
                .multiply(number)));
        return result;
    } // multiplyBy(number)

    /** Multiplies this Monomial with another one
     *  by multiplying it with each factor of the parameter monomial.
     *  @param mono2 multiply with this monomial
     *  @return new object that contains the product
     */
    public Monomial multiply(Monomial mono2) {
        Monomial result = this.clone();
        Iterator<String> iter = mono2.keySet().iterator();
        while (iter.hasNext()) {
            String name2 = iter.next();
            result.multiplyBy(name2, mono2.getExponent(name2));
        } // while iter
        result.setCoefficient(Coefficient.valueOf(this.getCoefficient()
                .multiply(mono2.getCoefficient())));
        if (result.isZero()) {
            result.clear(); // remove all variables
        }
        return result;
    } // multiply(Monomial)

    /** Raise this Monomial to some power.
     *  @param exponent raise to this power &gt;= 0; 0 and 1 are handled individually.
     *  @return new object which contains the monomial raised to the expontent
     */
    public Monomial pow(int exponent) {
        Monomial result = this.clone();
        if (exponent < 0) {
            throw new IllegalArgumentException("exponent may not be negative");
        } else if (exponent == 0) {
            result.setCoefficient(1);
            result.clear();
        } else if (exponent == 1) {
            // ignore - leave the Monomial as it is
        } else { // >= 2 : multiply all factor's exponents
            Iterator<String> iter = vars.keySet().iterator();
            while (iter.hasNext()) {
                String name = iter.next();
                result.putExponent(name, this.getExponent(name) * exponent);
            } // while iter
            // setSign(exponent % 2 == 0 ? 1 : -1);
            result.setCoefficient(Coefficient.valueOf(this.getCoefficient().pow(exponent)));
        } // >= 2
        return result;
    } // pow

    /** Modifies <em>this<em> {@link Monomial} such that the
     *  specified variable "consumes" as big a power factor of the {@link Coefficient}
     *  as possible, and divides the Coefficient accordingly
     *  @param varName try to consume the power factor by this variable
     *  @return the root of the extracted factor;
     *  side effect: divides the Coefficient of <em>this<em> Monomial by the power factor
     */
    public BigInteger reducePowerCoefficient(String varName) {
        int exp1 = this.getExponent(varName);
        BigInteger bint = this.getCoefficient().bigIntegerValue();
        PrimeFactorization primfn = new PrimeFactorization(bint.abs());
        BigInteger[] rpair = primfn.reducePowerOf(exp1); // [0] = extracted root, [1] = remaining factor
        this.setCoefficient(Coefficient.valueOf(
                bint.compareTo(BigInteger.ZERO) < 0
                    ? rpair[1].negate()
                    : rpair[1]
                ));
        return rpair[0];
    } // reducePowerCoefficient

    /** Divides this Monomial <em>in place</em> by an exponentiated variable or number.
     *  This method can only be used internally since it does not clone.
     *  The resulting exponent may not become negative.
     *  @param name2 variable name or constant number
     *  @param exp2 raise variable to this power
     *  @return this object, now containing the fraction,
     *  or null if the parameter does not divide <em>this</em> Monomial evenly.
     */
    public Monomial divideBy(String name2, int exp2) {
        Monomial result = this;
        try {
            if (isNumber(name2)) {
                Coefficient/*ratint*/ bint2 = Coefficient.valueOf(((new Coefficient(name2)).pow(exp2)));
                if (bint2.equals(Coefficient.ZERO)) {
                    throw new IllegalArgumentException("division by zero");
                } else {
                    result.setCoefficient(Coefficient.valueOf(this.getCoefficient().divide(bint2)));
                }
            } else if (exp2 == 0) {
                // divide by 1 = do nothing
            } else {
                int exp1 = result.getExponent(name2);
                if (exp1 != 0) {
                    int exp = exp1 - exp2;
                    if (exp >= 1) {
                        result.putExponent(name2, new Integer(exp));
                    } else if (exp == 0) {
                        result.vars.remove(name2);
                    } else {
                        result = null; // not divisible
                    /*
                        throw new IllegalArgumentException("exponent may not be negative: "
                            + this.toString() + " / " + name2 + "^" + String.valueOf(exp2));
                    */
                    }
                } else {
                    result = null; // not divisible
                    /*
                        throw new IllegalArgumentException("divisor may not be null: "
                            + this.toString() + " / " + name2 + "^" + String.valueOf(exp2));
                    */
                }
            }
        } catch (Exception exc) {
            System.out.println(exc.getMessage());
            exc.printStackTrace();
        }
        return result;
    } // divideBy(name, exponent)

    /** Divides <em>this</em> Monomial <em>in place</em> by a BigInteger.
     *  This method can only be used internally since it does not clone.
     *  @param number a constant number
     *  @return this object, now containing the quotient
     */
    public Monomial divideBy(BigInteger number) {
        Monomial result = this;
        result.setCoefficient(Coefficient.valueOf(this.getCoefficient()
                .divide(number)));
        return result;
    } // divideBy(number)

    /** Divides <em>this</em> {@link Monomial} by another one
     *  by dividing it with each factor of the parameter monomial.
     *  There may not remain any negative exponents of variables,
     *  but the resulting coefficient may get a denominator different from 1.
     *  The divisor may not be zero, of course.
     *  @param mono2 divide by this Monomial
     *  @return new object that contains the fraction, or zero if the parameter
     *  does not divide <em>this</em> monomial evently
     *  @throws ArithmeticException if the second monomial is zero
     */
    public Monomial divide(Monomial mono2) {
        if (mono2.isZero()) {
            throw new ArithmeticException();
        }
        Monomial result = this.clone();
        try {
            BigInteger[] divRemain = this.getCoefficient().divideAndRemainder(mono2.getCoefficient());
            if (divRemain[1].equals(BigInteger.ZERO)) {
                result.setCoefficient(Coefficient.valueOf(divRemain[0]));
                if (! result.isZero()) {
                    Iterator<String> iter = mono2.keySet().iterator();
                    while (iter.hasNext() && result != null) {
                        String name2 = iter.next();
                        result = result.divideBy(name2, mono2.getExponent(name2));
                    } // while iter
                } // ! ZERO
            } else { // did not divide evenly
                result.setCoefficient(0);
            } //
        } catch (Exception exc) {
            System.out.println(exc.getMessage());
            exc.printStackTrace();
        }
        return result;
    } // divide(Monomial)

    /** Compute the greatest common divisor of <em>this</em> Monomial and another.
     *  @param mono2 the 2nd monomial
     *  @return new object which contains the gcd of the coefficients, and
     *  the intersection of the variables with their minimum exponents
     */
    public Monomial gcd(Monomial mono2) {
        Monomial result = new Monomial();
        Iterator<String> iter = vars.keySet().iterator();
        while (iter.hasNext()) {
            String name1 = iter.next();
            int exp1 = this     .getExponent(name1);
            int exp2 = mono2.getExponent(name1);
            int minExp = Math.min(exp1, exp2);
            if (minExp > 0) {
                result.putExponent(name1, minExp);
            }
        } // while iter
        // setSign(exponent % 2 == 0 ? 1 : -1);
        result.setCoefficient(Coefficient.valueOf(this.getCoefficient().gcd(mono2.getCoefficient())));
        return result;
    } // gcd

    /** Compute the least common multiple of <em>this</em> Monomial and another.
     *  @param mono2 the 2nd monomial
     *  @return new object which contains the lcm of the coefficients, and
     *  the union of the variables with their maximum exponents
     */
    public Monomial lcm(Monomial mono2) {
        Monomial result = mono2.clone();
        Iterator<String> iter = vars.keySet().iterator();
        while (iter.hasNext()) {
            String name1 = iter.next();
            int exp1 = this     .getExponent(name1);
            int exp2 = mono2.getExponent(name1);
            if (exp1 > exp2) {
                result.putExponent(name1, exp1);
            }
        } // while iter
        // setSign(exponent % 2 == 0 ? 1 : -1);
        result.setCoefficient(Coefficient.valueOf(BigIntegerUtil.lcm(this.getCoefficient(), mono2.getCoefficient())));
        return result;
    } // lcm

    /** Compares the sets of exponentiated variables of two Monomials.
     *  @param mono2 second comparision operand
     *  @return -1, 0 or +1 if <em>this</em> is &lt;, = or &gt; the parameter
     */
    public int compareTo(Monomial mono2) {
        int result = 0;
        Iterator<String> iter1 = vars .keySet().iterator();
        Iterator<String> iter2 = mono2.keySet().iterator();
        int    exp1,  exp2;
        String name1, name2;
        boolean busy1 = true;
        while (busy1 && iter1.hasNext()) {
            name1 = iter1.next();
            if (iter2.hasNext()) {
                name2 = iter2.next();
                result = name1.compareTo(name2);
                if (result != 0) {
                    busy1 = false;
                } else {
                    exp1 = this     .getExponent(name1);
                    exp2 = mono2.getExponent(name2);
                    if (exp1 != exp2) {
                        busy1 = false;
                        result = (exp1 < exp2) ? -1 : 1;
                    } else { // exponents equal, too
                        // continue loop
                    }
                } // names equal
            } else { // iter2 exhausted, iter1 is longer
                busy1 = false;
                result = 1;
            } // ! iter2.hasNext
        } // while iter
        if (busy1) { // iter2 not yet exhausted
            if (iter2.hasNext()) { // iter2 is longer
                result = -1;
            } else {
                result = 0; // exponentiated variables are equal
            }
        }
        return result;
    } // compareTo

    /** Determines whether the parameter monomial has the same value as <em>this</em> monomial.
     *  @param mono2 second comparision operand
     *  @return whether the variable/exponent sequences are the same
     */
    public boolean equals(Monomial mono2) {
        return this.compareTo(mono2) == 0;
    } // equals
    
    //----------------
    /** Returns a String representation of the monomial, either compressed or full
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible
     *  @param number String representation of the coefficient, either empty, a number, or a product
     *  @return "x*y^3", for example for mode = 0, "+ 1*x^1*y^3" for mode = 1
     */
    private String toStringCommon(int mode, String number) {
        StringBuffer result = new StringBuffer(32);
        // result.append(sign >= 0 ? " + " : " - ");
        if (vars.size() == 0) { // no variables, coefficient only
            if (number.startsWith("-")) {
                result.append(number.replace("-", " - "));
            } else {
                result.append(" + ");
                result.append(number);
            }
        } else { // with variable(s)
            if (number.equals(" + 0")) {
                result.append(number);
                vars.clear(); // just for safety
            } else if (mode != 1 && number.equals("1")) {
                result.append(" + ");
            } else if (mode != 1 && number.equals("-1")) {
                result.append(" - ");
            } else {
                if (number.startsWith("-")) {
                    result.append(number.replace("-", " - "));
                } else {
                    result.append(" + ");
                    result.append(number);
                }
                if (mode != 2) {
                    result.append("*");
                }
            }
            Iterator<String> iter = vars.keySet().iterator();
            int count = 0;
            while (iter.hasNext()) {
                count ++;
                if (count > 1) {
                    result.append("*");
                }
                String name = iter.next();
                result.append(name);
                int exp = this.getExponent(name);
                if (mode == 1 || exp > 1) {
                    result.append("^");
                    result.append(exp);
                }
            } // while iter
        } // with variable(s)
        return mode != 2 ? result.toString() : result.toString().replaceAll(" ", "");
    } // toString(mode)

    /** Returns a string representation of the monomial, either compressed or full
     *  @param mode 0 = normal, 1 = full (for substitution), 2 = nice / human legible
     *  @return "x*y^3", for example if mode = 0, "+ 1*x^1*y^3" if mode = 1
     */
    public String toString(int mode) {
        String number = coefficient.toString();
        return toStringCommon(mode, number);
    } // toString(mode)

    /** Returns a string representation of the monomial, either compressed or full
     *  @param full whether to return a complete representation suitable for substitution
     *  @return "x*y^3", for example if full = false, "+ 1*x^1*y^3" if full = true
     */
    public String toString(boolean full) {
        String number = coefficient.toString();
        return toStringCommon(full ? 1 : 0, number);
    } // toString(full)

    /** Returns a string representation of the monomial in compressed representation
     *  @return "- 2*x^7*y^8", for example
     */
    public String toString() {
        String number = coefficient.toString();
        return toStringCommon(0, number);
    } // toString()

    /** Returns a nice, human legible String representation of the monomial
     *  @return "-2x^7*y^8", for example
     */
    public String niceString() {
        String number = coefficient.toString();
        return toStringCommon(2, number);
    } // niceString()

    /** Returns a String representation of <em>this</em> {@link Monomial},
     *  in compressed form,
     *  and with the coefficient splitted into powers of prime factors
     *  @return "2^2*3*5*x*y^3" for example
     */
    public String toFactoredString() {
        BigInteger bint = this.getCoefficient().bigIntegerValue();
        String number = (bint.compareTo(BigInteger.ZERO) < 0 ? "-" : "")
                + (new PrimeFactorization(bint.abs())).toString();
        return toStringCommon(0, number);
    } // toFactoredString()

    //----------------
    /** Takes the variables from <em>mono2</em> and
     *  creates a monomial with the powers of these variables
     *  occurring in <em>this</em> monomial, with constant +1.
     *  @param mono2 a multiplication of all desired variables (names with exponent 1 and constant +1)
     *  @return monomial with constant &gt;= +1, and which consists of
     *  the powers of the variables in <em>monomial</em>, (without ^0),
     *  or 0 if not any of the variables of <em>mono2</em> was contained in <em>this</em> monomial.
     */
    public Monomial getVariablePowers(Monomial mono2) {
        Monomial result = new Monomial();
        Iterator<String> iter2 = mono2.keySet().iterator();
        int exp1;
        String name2;
        boolean found = false;
        while (iter2.hasNext()) {
            name2 = iter2.next();
            exp1  = this.getExponent(name2);
            if (exp1 > 0) {
                found = true;
                result.multiplyBy(name2, exp1);
            }
        } // while iter2
        if (! found) {
            result.setCoefficient(0);
        }
        return result;
    } // getVariablePowers

    /** Tests whether <em>this</em> monomial contains the exact variable power combination
     *  of <em>mono2</em>; if not, 0 is returned, otherwise, the factor monomial/mono2.
     *  @param mono2 a combination of powers of the desired variables, with coefficient 1
     *  @return 0 or a mono3 such that monomial = mono2 * mono3
     */
    public Monomial getFactorOf(Monomial mono2) {
        Monomial result = this.clone();
        Iterator<String> iter2 = mono2.keySet().iterator();
        int exp1, exp2;
        String  name2;
        boolean busy = true;
        while (busy && iter2.hasNext()) {
            name2 = iter2.next();
            exp1 = result   .getExponent(name2);
            exp2 = mono2.getExponent(name2);
            if (exp1 == 0 || exp1 != exp2) {
                busy = false;
                result.setCoefficient(0); // no factor
            } else { // this variable was not found or had a different exponent
                result.putExponent(name2, 0); // remove this variable
            }
        } // while iter2
        return result;
    } // getFactorOf

    //=====================================================

    /** Tests whether the monomial order is valid:
     *  For all monomials M, N, P:
     *  if M &lt; N then M*P &lt; N*P and M &lt; M*P
     */
    private static void orderTest() {
        int total = 0;
        int failure = 0;
        Permutator perm = new Permutator(6);
        String letters = "abcdefghi";
        String ops = "<=>";
        while (perm.hasNext()) {
            total ++;
            int[] meter = perm.next();
            Monomial m = new Monomial(letters.substring(meter[0], meter[0] + 1), meter[1] + 1);
            Monomial n = new Monomial(letters.substring(meter[2], meter[2] + 1), meter[3] + 1);
            Monomial p = new Monomial(letters.substring(meter[4], meter[4] + 1), meter[5] + 1);
            int diff1 = 1 + Integer.signum(m.signature().compareTo(n.signature()));
            int diff2 = 1 + Integer.signum(m.multiply(p).signature().compareTo(n.multiply(p).signature()));
            if (diff1 != diff2) {
                failure ++;
                System.out.println(  m.signature()             + ops.substring(diff1, diff1 + 1) + n.signature()
                        + ", but " + m.multiply(p).signature() + ops.substring(diff2, diff2 + 1) + n.multiply(p).signature());
            }
            if (m.signature().compareTo(m.multiply(p).signature()) >= 0) {
                failure ++;
                System.out.println(m.signature() + " >= m*p  with respect to " + p.signature());
            }
        } // while perm
        System.out.println(total + " monomial order tests: " + failure + " failed");
    } // orderTest

    /** Test method, shows a monomial after several operations.
     *  @param args command line arguments - none
     *  Resulting output (c.f. test case test/T02.prev.tst):
     *  <pre>
720 monomial order tests: 0 failed
 + 64
 - 64
 + 128
 + 128*x4^4
 + 128*a^2*x4^4
 + 128*a^2*b*x4^4
 + 16384*a^4*b^2*x4^8
signature=/x4.08/b.02/a.04
characteristic=/08/02/04;16384
getVariablePowers( + a*b) =  + a^4*b^2
getFactorOf( + a^4*b^2) =  + 16384*x4^8
 + 24*a^4*b^2*x4^8 /  + 100*a^3*b^2 =  + 0
gcd( + 24*a^6*b^6*c*x4^8, + 100*a^5*b^4) =  + 4*a^5*b^4
lcm( + 24*a^6*b^6*c*x4^8, + 100*a^5*b^4) =  + 600*a^6*b^6*c*x4^8
 + 2400*a^6*b^6*c*x4^8 /  + 100*a^5*b^4 =  + 24*a*b^2*c*x4^8
     *  </pre>
     */
    public static void main(String[] args) {
        try {
            orderTest();
            Monomial mono1 = new Monomial("4", 3);
            System.out.println(mono1.toString());
            mono1 = mono1.negate();
            System.out.println(mono1.toString());
            mono1 = mono1.multiply(new Monomial("-2"   ));
            System.out.println(mono1.toString());
            mono1 = mono1.multiply(new Monomial("x4", 4));
            System.out.println(mono1.toString());
            mono1 = mono1.multiply(new Monomial("a" , 2));
            System.out.println(mono1.toString());
            mono1 = mono1.multiply(new Monomial("b" , 1));
            System.out.println(mono1.toString());
            mono1 = mono1.pow(2);
            System.out.println(mono1.toString());
            System.out.println("signature="      + mono1.signature     ());
            System.out.println("characteristic=" + mono1.characteristic());
            System.out.println("CONSTANT_SIGNATURE=" + Monomial.CONSTANT_SIGNATURE);

            Monomial mono4 = new Monomial(new String[] { "a", "b" });
/*
            System.out.println("getVariablePowers(" + mono4.toString() + ") = " + mono1.getVariablePowers(mono4).toString());
*/
            Monomial mono5 = (new Monomial("a", 4))
                    .multiply(new Monomial("b", 2));
            System.out.println("getFactorOf(" + mono5.toString() + ") = "       + mono1.getFactorOf      (mono5).toString());
            Monomial mono2 = (new Monomial("10", 2))
                    .multiply(new Monomial("a", 3))
                    .multiply(new Monomial("b", 2));

            mono1.setCoefficient(24);
            System.out.println(mono1.toString() + " / "        + mono2.toString()  + " = " + mono1.divide(mono2).toString());
            mono1   .multiplyBy("a", 2).multiplyBy("b", 4).multiplyBy("c", 1);
            mono2   .multiplyBy("b", 2).multiplyBy("a", 2);
            System.out.println("gcd(" + mono1.toString() + "," + mono2.toString() + ") = " + mono1.gcd   (mono2).toString());
            System.out.println("lcm(" + mono1.toString() + "," + mono2.toString() + ") = " + mono1.lcm   (mono2).toString());
            mono1.setCoefficient(2400);
            System.out.println(mono1.toString() + " / "        + mono2.toString()  + " = " + mono1.divide(mono2).toString());
            mono1 = new Monomial(32, "x", 2);
            BigInteger root1 = mono1.reducePowerCoefficient("x");
            System.out.println("(32*x^2).reducePowerCoefficient(\"x\") = " + root1.toString() + ", " + mono1.toString());
        } catch (Exception exc) {
            System.out.println(exc.getMessage());
            exc.printStackTrace();
        }
    } // main

} // Monomial
