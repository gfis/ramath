/*  Series - store and evaluate (converging) series of BigRationals
 *  @(#) $Id: Series.java 232 2009-08-27 22:17:16Z gfis $
 *  2015-06-17: BigRational extends BigInteger
 *  2008-10-21, Georg Fischer: copied from Series
 */
/*
 * Copyright 2008 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath;
import  org.teherba.ramath.BigRational;
import  java.util.ArrayList;
import  java.math.BigDecimal;
import  java.math.BigInteger;

/** Series - store and evaluate a (converging) series of {@link BigRational}s.
 *  @author Dr. Georg Fischer
 */
public class Series extends ArrayList<BigRational> {
    public final static String CVSID = "@(#) $Id: Series.java 232 2009-08-27 22:17:16Z gfis $";

    /** No-args Constructor
     */
    public Series() {
        super(128);
    } // no-args Constructor

    /** Evaluates the series and returns the corresponding rational number
     *  @return BigRational from the evaluated series
     */
    public BigRational getRational() {
        BigRational result = BigRational.valueOf(0, 1);
        int index = 0;
        while (index < this.size()) {
            result = result.add(this.get(index));
            index ++;
        } // while
        return result.simplify();
    } // getRational

    /** Evaluates the series and returns the corresponding decimal fraction
     *  @return BigDecimal from the evaluated series
     */
    public BigDecimal getDecimal() {
        return this.getRational().getDecimal();
    } // getDecimal

    /** Returns a String representation of the series
     *  @return "a,b,c,d,e..."
     */
    public String toString() {
        StringBuffer result = new StringBuffer(256);
        int index = 0;
        while (index < this.size()) {
            if (index > 0) {
                result.append(',');
            }
            result.append(((BigRational) this.get(index)).toString());
            index ++;
        } // while
        return result.toString();
    } // toString

    /** Stores the series for Euler's number e = 2.718281828459045235360287471...
     *  @param maxTerm maximum number of terms of the series
     */
    public void setNatural(int maxTerm) {
        BigRational term  = BigRational.valueOf(1, 1);
        this.add(term); // 1/0! (0! = 1)
        BigInteger factor = BigInteger.ZERO;
        int index = 1;
        while (index < maxTerm) {
            factor = factor.add(BigInteger.ONE);
            term   = term.divide(factor); // 1/n!
            this.add(term);
            index ++;
        } // while index
    } // setNatural(maxTerm)

    /** Stores the series for Euler's number e = 2.2.718281828459045235360287471...
     */
    public void setNatural() {
        setNatural(super.size());
    } // setNatural()

    /** Test method
     *  @param args command line arguments (none)
     */
    public static void main(String[] args) {
        Series series = new Series();
        series.setNatural(256);
        System.out.println(series.getDecimal());
    } // main

} // Series
