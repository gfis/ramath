package irvine.math.z;

import java.math.BigInteger;

/**
 * An object to hold an immutable large integer.  It provides a superset of the
 * operations provided by Java's <code>BigInteger</code> class.
 * This is a substitute for the class irvine.math.z.Z implemented in Sean Irvine's jOEIS.
 * @author Georg Fischer
 */
public class Z extends BigInteger {

	/** 
	 *  Constructor for long
	 */
	public Z(long zl) {
		  super(String.valueOf(zl));
	} 
}
