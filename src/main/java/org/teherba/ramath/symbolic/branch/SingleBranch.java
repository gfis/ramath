/*  SingleBranch: create a single child node from modular considerations
 *  @(#) $Id: SingleBranch.java 970 2012-10-25 16:49:32Z gfis $
 *  2016-01-08, Georg Fischer: copied from BaseBranch.java
 */
/*
 * Copyright 2016 Dr. Georg Fischer <punctum at punctum dot kom>
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
package org.teherba.ramath.symbolic.branch;
import  org.teherba.ramath.symbolic.RelationSet;
import  org.teherba.ramath.symbolic.RefiningMap;
import  org.teherba.ramath.symbolic.reason.ReasonFactory;
import  org.teherba.ramath.symbolic.solver.BaseSolver;
import  org.teherba.ramath.util.Dispenser;
import  org.teherba.ramath.util.ModoMeter;
import  java.math.BigInteger;
import  org.apache.log4j.Logger;

/** This class adds a single child node if a variable can be 
 *  expanded in a unique way.
 *  @author Dr. Georg Fischer
 */
public class SingleBranch extends BaseBranch {
    public final static String CVSID = "@(#) $Id: SingleBranch.java 970 2012-10-25 16:49:32Z gfis $";

    //--------------
    // Construction
    //--------------

    /** No-args Constructor
     */
    public SingleBranch() {
    } // no-args Constructor

    //-----------------------------------------
    // Check whether this branch should be applied to a RelationSet
    //-----------------------------------------

    /** Whether <em>this</em> branch can and should be applied to the
     *  current {@link RelationSet}.
     *  @param rset1 RelationSet to be expanded
     *  @return <em>true</em> if the <em>this</em> branch can be applied,
     *  or <em>false</em> otherwise.
     */
    public boolean isApplicable(RelationSet rset1) {
    	boolean result = true;
        this.setParentIndex    (rset1.getIndex());
        int curLevel           = rset1.getNestingLevel() + 1;
        this.setNestingLevel   (curLevel);
        this.setOldSiblingIndex(-1);
        RefiningMap vmap1      = rset1.getMapping();
        this.setRefiningMap    (vmap1);
        BigInteger factor      = BigInteger.valueOf(solver.getModBase()).pow(curLevel);
        ModoMeter meter        = solver.getPreparedMeter(rset1, vmap1, factor);
        this.setDispenser      (meter);
        return result;
    } // isApplicable

} // SingleBranch
