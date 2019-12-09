package irvine.math.z;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Random;

// 2019-12-09, Georg Fischer: for org.teherba.ramath, no digits, primes and factorization

/**
 * Utility functions.
 *
 * @author Sean A. Irvine
 */
public final class ZUtils {

  private ZUtils() { }

  /**
   * Convert a list of integers specified as a string into an array of Z.
   * The numbers in the string can be space or comma separated.
   * @param string string containing numbers
   * @return Z array
   */
  public static Z[] toZ(final String string) {
    String s = string;
    if (s.startsWith("[") || s.startsWith("(") || s.startsWith("{")) {
      s = s.substring(1);
    }
    if (s.endsWith("]") || s.endsWith(")") || s.endsWith("}")) {
      s = s.substring(0, s.length() - 1);
    }
    final String[] parts = s.split("[, ]+");
    final Z[] res = new Z[parts.length];
    for (int k = 0; k < parts.length; ++k) {
      res[k] = new Z(parts[k]);
    }
    return res;
  }
}
