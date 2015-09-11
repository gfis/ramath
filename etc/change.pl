#!/usr/bin/perl

# Search and replace $(FROM) to $(TO)
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-09-11: from scratch
#------------------------------------
use strict;

	my $from = shift(@ARGV);
	my $to   = shift(@ARGV);
	while (<>) {
        s/$from/$to/g;
        print;
    } # while <>
__DATA__
     */
    private String considerAll(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int iqueue = rset2.getSiblingIndex();
        boolean busy = true;
        while (busy && iqueue > solver.ROOT_INDEX) { // down through all nodes in the queue
            RelationSet rset1 = solver.get(iqueue);
            result = reason.consider(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                busy = false; // break loop
            } // reason successful
            iqueue --;
        } // while iqueue
        return result;
    } // considerAll

    /** Checks all anchestors of a {@link RelationSet}
     *  @param reason the reason to be investigated
     *  @param rset2 the new {@link RelationSet} to be added to the queue
     *  @return a message String 
     */
    private String considerAnchestors(BaseReason reason, RelationSet rset2) {
        String result = VariableMap.UNKNOWN;
        int iqueue = rset2.getParentIndex();
        boolean busy = true;
        while (busy && iqueue > solver.ROOT_INDEX) { // down through all parents
            RelationSet rset1 = solver.get(iqueue);
            result = reason.consider(iqueue, rset1, rset2);
            if (! result.startsWith(VariableMap.UNKNOWN)) { // reason successful
                busy = false; // break loop
            } // reason successful
            iqueue = rset1.getParentIndex();
        } // while iqueue
        return result;
    } // considerAnchestors

