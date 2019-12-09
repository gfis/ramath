/*  Z - replacement for class irvine.math.z.Z implemented in Sean Irvine's jOEIS.
 *  @(#) $Id$
 *  2019-06-04, Georg Fischer
 */
package irvine.math.z;

import java.math.BigInteger;

/**
 * An object to hold an immutable large integer.  It provides a superset of the
 * operations provided by Java's <code>BigInteger</code> class.
 * This is a substitute for the class irvine.math.z.Z implemented in Sean Irvine's jOEIS.
 * @author Georg Fischer
 */
public class Z extends BigInteger {

  /** The constant negative one. */
  public static final Z ZERO    = new Z(0L);

  /** The constant negative one. */
  public static final Z ONE     = new Z(1L);

  /** The constant negative one. */
  public static final Z NEG_ONE = new Z(-1L);
  
  /** underlaying BigINteger */
  protected BigInteger num;

  /** 
   *  Constructor for long
   *  @param zl long value
   */
  public Z(long zl) {
  	super("0");
    num = BigInteger.valueOf(zl);
  } 

  /** 
   *  Constructor for String
   *  @param zs number as String in base 10
   */
  public Z(String zs) {
  	super("0");
    num = new BigInteger(zs);
  } 

  /** 
   *  Constructor for BigInteger
   *  @param zbi number as BigInteger
   */
  public Z(BigInteger zbi) {
  	super("0");
    num = zbi;
  } 

  /**
   * Convert a Java <code>long</code> to Z format.
   * @param val long integer to convert
   * @return Z version of this number
   */
  public static Z valueOf(long val) {
    return new Z(val);
  }

 /**
   * Return the sum of this integer and <code>n</code>.
   * @param n number to add
   * @return sum of this and <code>n</code>.
   */
  public Z add(Z n) {
   	return new Z(num.add(n.num));
  }

  /**
   * Return the difference of this integer and <code>n</code>.
   * @param n number to subtract
   * @return difference of this and <code>n</code>.
   */
  public Z subtract(Z n) {
   	return new Z(num.subtract(n.num));
  }

  /**
   * Return the product of this number and <code>n</code>.
   * @param n number to multiply
   * @return product of this and <code>n</code>.
   */
  public Z multiply(Z n) {
    return new Z(num.multiply(n.num));
  }

  /**
   * Return the product of this integer and <code>n</code>.
   * @param n number to multiply
   * @return product of this and <code>n</code>.
   */
  public Z multiply(long n) {
    return new Z(num.multiply(BigInteger.valueOf(n)));
  }

  /**
   * Return the product of this integer and <code>n</code>.
   * @param n number to multiply
   * @return product of this and <code>n</code>.
   */
  public Z negate() {
    return new Z(num.negate());
  }

  /**
   * Return the product of this integer and <code>n</code>.
   * @param n number to multiply
   * @return product of this and <code>n</code>.
   */
  public Z[] divideAndRemainder(Z n) {
    BigInteger[] quotRemd = num.divideAndRemainder(n.num);
    return new Z[] { new Z(quotRemd[0]), new Z(quotRemd[1]) };
  }

  /**
   * Return whether <code>this</code number is equal to a second.
   * @param val2 2nd comparision operand
   * @return true if the two numbers are equal, false otherwise
   */
  public boolean equals(Z val2) {
    return num.equals(val2.num);
  }

  /**
   * Return a String representation of this number in base 10.
   * @return for example "123"
   */
  public String toString() {
    return num.toString();
  }

} // Z
