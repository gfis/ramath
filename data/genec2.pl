#!perl
# Generates methods for org/teherba/ramath/MatrixExhauster.java
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-03-31: copied from genEC.pl
#
# usage:
#   perl genec2.pl exp left right
#-----------------------------------
use strict;

    my $exp   = shift(@ARGV);
    my $exp1  = $exp + 1;
    my $left  = shift(@ARGV);
    my $right = shift(@ARGV);
    my $method_name = "ec$exp$left$right";
    my $iex = 0;
    my $indent = "        ";
	my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);
	my $timestamp = sprintf ("%04d-%02d-%02d %02d:%02d:%02d", $year + 1900, $mon + 1, $mday, $hour, $min, $sec);    
    print << "GFis";
    /** $method_name: Generate matrices which preserve tuples for Euler\'s conjecture
     *  \@param vect0 initial vector which represents a sum of like powers
     *  Caution: This Java method was generated on $timestamp by ramath/data/$0
     *  Do   N O T   E D I T   here!
     */
    public void $method_name(Vector vect0) {
        int MAXPOW = 16; // matrix elements must be smaller
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
GFis
    print "${indent}    powers[ipow] = " . &power($exp, "ipow") . ";\n";
    print << "GFis";
            ipow ++;
        } // while 1
        int alen = vect0.size();
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
GFis
    for ($iex = 1; $iex <= $exp1; $iex ++) {
        &inties($exp, "m$iex", "");
    } # for $iex
    my $iex = 0;
    for ($iex = 1; $iex <= $exp1; $iex ++) {
        print "${indent}int t$iex = vect0.get(" . ($iex - 1) . ");\n";
    } # for $iex
    &inties($exp, "r", "" , "resulting vector of multiplication m*t");
    &inties($exp, "r", "p", "(2nd, 3rd ...) powers thereof");

    for ($iex = $exp1; $iex > 0; $iex --) {
        &forblock($exp, $iex);
    } # for forblock
        
#       r1 = m11*t1 + m12*t2 + m13*t3;
#       if (r1 > 0) {
#       r2 = m21*t1 + m22*t2 + m23*t3;
#       if (r2 > 0 && r2 != r1) {
#       r3 = m31*t1 + m32*t2 + m33*t3;
#       if (r3 > 0 && r3 != r2 && r3 != r1) {

    for ($iex = 1; $iex <= $exp1; $iex ++) {
        print "${indent}r$iex";
        for (my $jex = 1; $jex <= $exp1; $jex ++) {
            print "" . ($jex == 1 ? " = " : " + ") . "m$iex$jex*t$jex";
        } # for $jex
        print ";\n";
        print "${indent}if (r$iex > 0";
        for (my $jex = $iex - 1; $jex >= 1; $jex --) {
            print " \&\& r$iex != r$jex";
        } # for $jex
        print ") {\n";
    } # for $iex

    for ($iex = 1; $iex <= $exp1; $iex ++) {
        print "${indent}r${iex}p = " . power($exp, "r$iex") . ";\n";
    } # for $iex
    print "${indent}if (Vector.gcd";
    for ($iex = 1; $iex <= 2; $iex ++) {
        print "" . ($iex == 1 ? "(" : ", ") . "r$iex";
    } # for $iex
    print ") == 1) {\n";

#       if (r1p + r2p - r3p == 0) { // preserves once
    print "${indent}if (";
    for ($iex = 1; $iex <= $left; $iex ++) {
        if ($iex > 1) {
            print " + ";
        }
        print "r${iex}p";
    }
    for ($iex = $left + 1; $iex <= $exp1; $iex ++) {
        print " - ";
        print "r${iex}p";
    }
    print " == 0) { // preserves once\n";

    print << "GFis";
            Matrix amat = new Matrix(alen, new int[]
GFis
    for ($iex = 1; $iex <= $exp1; $iex ++) {
        print "$indent            ";
        for (my $jex = 1; $jex <= $exp1; $jex ++) {
            print "" . ($iex == 1 && $jex == 1 ? "{ " : ", ") . "m$iex$jex";
        } # for $jex
        print "\n";
    } # for $iex
    print << "GFis";
                    } );
            amat.printPreservedChain(vect0, 1, $left, $right);
        } // preserves once
        } // Vector.gcd
GFis
    for ($iex = $exp + 1; $iex > 0; $iex --) {
        print "${indent}\} // if r$iex > 0\n";
    } # for $iex
    my $braces = substr("}}}}}}}}}}}}}}}}}}}}}}}}}}}}", 0, $exp + 1);
    for ($iex = $exp + 1; $iex > 0; $iex --) {
        print "${indent}\} // column $iex\n";
        print "${indent}$braces // for mi$iex\n";
    } # for $iex
    print << "GFis";
    } // $method_name
GFis

#       for (m13 = minDigit; m13 < maxDigit; m13 ++) {
#       int m13p2 =          m13*m13;
#       for (m23 = minDigit; m23 < maxDigit; m23 ++) {
#       int m23p2 =          m23*m23;
#       for (m33 = minDigit; m33 < maxDigit; m33 ++) {
#       int m33p2 =          m33*m33;
sub forblock {
    my ($exp, $col) = @_;
    my $exp1 = $exp + 1;
    my $iex = 0;
    for ($iex = 1; $iex <= $exp1; $iex ++) {
        print "${indent}for (m$iex$col = minDigit; m$iex$col < maxDigit; m$iex$col ++) {\n";
    } # for $iex
    if ($col == $exp1) {
        print "${indent}if (true) \{ // column $col\n";
    } else {
#       int v1 = m12 + m13;
#       int v2 = m22 + m23;
#       int v3 = m32 + m33;
        for ($iex = 1; $iex <= $exp1; $iex ++) {
            print "${indent}int c${col}r$iex = m${iex}$col + m${iex}$exp1;\n";
        } 
#       if (v1*v1 + v2*v2 - v3*v3 == 0) { // 2nd column
        print "${indent}if (";
	    if (0) {
	        for ($iex = 1; $iex <= $left; $iex ++) {
	            print "" . ($iex > 1 ? " + " : "") . &power($exp, "c${col}r$iex");
	        }
	        for ($iex = $left + 1; $iex <= $exp1; $iex ++) {
	            print " - " . &power($exp, "c${col}r$iex");
	        }
	    } else {
	    	print "0";
	    }
        print " == 0) { // column $col\n";
    } 
} # forblock

sub power {
    my ($exp, $name) = @_;
    my $result = $name;
    for (my $iex = 2; $iex <= $exp; $iex ++) {
        $result .= "*$name";
    }
    return $result;
} # power

sub inties {
#   declares a sequence of 'int's
    my ($exp, $prefix, $postfix, $comment) = @_;
    my $iex = 1;
    my $result = "${indent}int $prefix$iex$postfix";
    for ($iex = 2; $iex <= $exp + 1; $iex ++) {
        $result .= ", $prefix$iex$postfix";
    } # for $iex
    print "$result;";
    if ($comment ne "") {
        print " // $comment";
    }
    print "\n";
} # inties

__DATA__
    /** pEC221: Pythagorean triples - like v2,
     *  but ensure *[0,1,1] = 0, *[1,0,1] = 0, and later [3,4,5] = 0
     */
    public void pEC221(Vector vect0) {
        int powers[] = new int[MAXPOW]; 
        int ipow = 0;
        while (ipow < MAXPOW) {
            powers[ipow] = ipow*ipow*ipow;
            ipow ++;
        } // while 1
        // desired matrix, exhausted for all values minDigit <= v < maxDigit
        int m11, m12, m13, m14
          , m21, m22, m23, m24
          , m31, m32, m33, m34
          , m41, m42, m43, m44
          ;
        Vector vect1 = vect0 != null ? vect0 : new Vector(new int[] { 3, 4, 5 } );
        if (! vect1.isPowerSum(2, 2, 1)) {
            System.err.println(vect1.toString(",") + " not isPowerSum(2, 2, 1)");
            return;
        }
        int t1 = vect1.get(0);
        int t2 = vect1.get(1);
        int t3 = vect1.get(2); 
        // int t4 = vect1.get(3);
        int alen = vect1.size();
        int r1,  r2,  r3,  r4;  // resulting vector of multiplication m*t
        int r1p, r2p, r3p, r4p; // (2nd, 3rd) powers thereof
        int fact = 1;
        
        for (m13 = minDigit; m13 < maxDigit; m13 ++) {
        int m13p2 =          m13*m13;
        for (m23 = minDigit; m23 < maxDigit; m23 ++) {
        int m23p2 =          m23*m23;
        for (m33 = minDigit; m33 < maxDigit; m33 ++) {
        int m33p2 =          m33*m33;
        if (true) { // 3rd column

        for (m12 = minDigit; m12 < maxDigit; m12 ++) {
        int m12p2 =          m12*m12;
        for (m22 = minDigit; m22 < maxDigit; m22 ++) {
        int m22p2 =          m22*m22;
        for (m32 = minDigit; m32 < maxDigit; m32 ++) {
        int m32p2 =          m32*m32;
        // try [0,1,1]
        int v1 = m12 + m13;
        int v2 = m22 + m23;
        int v3 = m32 + m33;
        if (v1*v1 + v2*v2 - v3*v3 == 0) { // 2nd column

        for (m11 = minDigit; m11 < maxDigit; m11 ++) {
        int m11p2 =          m11*m11;
        for (m21 = minDigit; m21 < maxDigit; m21 ++) {
        int m21p2 =          m21*m21;
        for (m31 = minDigit; m31 < maxDigit; m31 ++) {
        int m31p2 =          m31*m31;
        // try [1,0,1]
        int u1 = m11 + m13;
        int u2 = m21 + m23;
        int u3 = m31 + m33;
        if (u1*u1 + u2*u2 - u3*u3 == 0) { // 1st column
        
        r1 = m11*t1 + m12*t2 + m13*t3;
        if (r1 > 0) {
        r2 = m21*t1 + m22*t2 + m23*t3;
        if (r2 > 0 && r2 != r1 && Vector.gcd(r1, r2) == 1) {
        r3 = m31*t1 + m32*t2 + m33*t3;
        if (r3 > 0 && r3 != r2 && r3 != r1) {
        r1p = r1*r1;
        r2p = r2*r2;
        r3p = r3*r3;

        if (r1p + r2p - r3p == 0) { // preserves once
            Matrix amat = new Matrix(alen, new int[]
                    { m11, m12, m13
                    , m21, m22, m23
                    , m31, m32, m33
                    } );
            amat.printPreservedChain(vect1, fact, 2, 1);
        } // preserves once

        } // if r3 > 0
        } // if r2 > 0
        } // if r1 > 0
        } // 1st column
        }}} // for mi1
        } // 2nd column
        }}} // for mi2
        } // 3rd column
        }}} // for mi3
    } // pEC221

