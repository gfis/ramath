/*  Selects the applicable dispenser
    @(#) $Id: DispenserFactory.java 657 2011-03-17 07:56:38Z gfis $
 *  2017-05-28: javadoc 1.8
    2013-09-10: TreeMap -> LinkedHashMap
    2013-07-04: copied from org.teherba.numword.SpellerFactory
*/
/*
 * Copyright 2013 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.util;
import  org.teherba.ramath.util.Dispenser;
import  java.util.Iterator;
import  java.util.LinkedHashMap;
import  org.apache.log4j.Logger;

/** Selects a specific dispenser.
 *  Initially, a list of all available dispensers is built, and classes
 *  which cannot be instantiated are <em>silently</em> ignored.
 *  @author Dr. Georg Fischer
 */
public class DispenserFactory {
    public final static String CVSID = "@(#) $Id: DispenserFactory.java 657 2011-03-17 07:56:38Z gfis $";
    /** log4j logger (category) */
    private Logger log;

    /** Maps codes to available {@link Dispenser}s */
    private LinkedHashMap<String, Dispenser> dispensers;

    /** Attempts to instantiate the {@link Dispenser} for some code
     *  @param code code designating the Dispenser
     *  @param className base name of the Dispenser class
     */
    private void addDispenser(String code, String className) {
        try {
            Dispenser dispenser = (Dispenser) Class.forName("org.teherba.ramath.util." + className).newInstance();
            dispensers.put(code, dispenser);
        } catch (Exception exc) {
            // ignore any error silently - this dispenser will not be known
            // log.error(exc.getMessage(), exc);
        }
    } // addDispenser

    /** No-args Constructor.
     *  The order of the languages here defines the order in the user interfaces.
     */
    public DispenserFactory() {
        log = Logger.getLogger(DispenserFactory.class.getName());
        dispensers = new LinkedHashMap<String, Dispenser>();
        addDispenser("exp"      , "Expander"            );
        addDispenser("intexp"   , "IntegerExpander"     );
        addDispenser("modo"     , "ModoMeter"           );
        addDispenser("monexp"   , "MonotoneExpander"    );
        addDispenser("perm"     , "Permutator"          );
        addDispenser("range"    , "RangeDispenser"      );
    } // Constructor(0)

    /** Gets an iterator over all implemented {@link Dispenser}s.
     *  @return list iterator over the codes for all {@link Dispenser}s
     */
    public Iterator<String> getIterator() {
        return dispensers.keySet().iterator();
    } // getIterator

    /** Gets the number of available {@link Dispenser}s
     *  @return number of languages which can be spelled
     */
    public int getCount() {
        return dispensers.size();
    } // getCount

    /** Determines whether the code denotes this {@link Dispenser} class.
     *  @param dispenser the Dispenser to be tested
     *  @param code code for the desired Dispenser
     *  @return whether the desired Dispenser was found
     */
    public boolean isApplicable(Dispenser dispenser, String code) {
        boolean result = false; // Dispenser instanceof Dispensers.get(code).getClass();
        return result;
    } // isApplicable

    /** Gets the applicable {@link Dispenser} for a specified code.
     *  @param code abbreviation for the Dispenser
     *  @return the dispenser for that code, or <em>null</em> if the
     *  Dispenser was not found
     */
    public Dispenser getDispenser(String code) {
        Dispenser result = dispensers.get(code);
        return result;
    } // getDispenser

    /** Test method, selects a {@link Dispenser}, 
     *  rolls through some combinations and prints them.
     *  @param args command line arguments: code, width, base, loop
     */
    public static void main(String[] args) {
        DispenserFactory factory = new DispenserFactory();
        int iarg = 0;
        String code = "modo";
        if (args.length > iarg) {
            code = args[iarg ++];
        } // 1st arg

        Dispenser dispenser = factory.getDispenser(code);
        if (dispenser != null) {
            dispenser.setWidth(4);
            if (args.length > iarg) {
                try {
                    dispenser.setWidth(Integer.parseInt(args[iarg ++]));
                } catch (Exception exc) {
                }
            } // 2nd arg
            dispenser.setBase(dispenser.getWidth());
            if (args.length > iarg) {
                try {
                    dispenser.setBase(Integer.parseInt(args[iarg ++]));
                } catch (Exception exc) {
                }
            } // 3rd arg
            int maxLoop = 64;
            if (args.length > iarg) {
                try {
                    maxLoop = Integer.parseInt(args[iarg ++]);
                } catch (Exception exc) {
                }
            } // 4th arg

            dispenser.reset();
            int iloop = 0;
            while (iloop < maxLoop) {
                System.out.println("#" + iloop + "\t" + dispenser.hasNext() +  ":\t" + dispenser.toString());
                dispenser.next();
                iloop ++;
            } // while iloop
        } else {
            System.err.println("no Dispenser known for code \"" + code +  "\"");
        }
    } // main

} // DispenserFactory
