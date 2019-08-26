#!perl

# Compute Lunnon's quotient-difference table symbolically
# @(#) $Id$
# 2019-08-26, Dr. Georg Fischer

use strict;
use integer;

my $maxrow = shift(@ARGV);
my $maxcol = $maxrow * 2;
my $ramath = "java -cp dist/ramath.jar org.teherba.ramath.symbolic.PolyFraction -parse";
my $letters = "abcdefghijklmnopqrstuvwxyz";

my @stab;
my $irow;
my $icol;
$irow = 0;
while ($irow < $maxrow) { # preset with 0
    $icol = 0;
	while ($icol < $maxcol) { # initial terms a,b,c ..
    	$stab[$irow][$icol] = 0;
    	$icol ++;
	} # while icol
	$irow ++;
} # preset with 0

$irow = 0;
$icol = 0;
while ($icol < $maxcol) { # upper row with ones ..
    $stab[$irow][$icol] = 1;
    $icol ++;
} # while $icol

$irow = 1;
$icol = 0;
while ($icol < $maxrow) { # initial terms a,b,c ..
    $stab[$irow][$icol] = substr($letters, $icol, 1);
    $icol ++;
} # while icol

my $ivar = 0; # index for z,y,x, ... - unknown constants
while ($icol < $maxcol) { # recurrence formula
    my $sum = "";
    $ivar = 1;
    while ($ivar <= $maxrow) {
        $sum .= " + " . substr($letters, length($letters) - $ivar, 1) . "*$stab[$irow][$icol - $ivar]";
        $ivar ++;
    } # while ivar
    $stab[$irow][$icol] = substr($sum, 3); # omit leading "+ "
    $icol ++;
} # while icol

$irow ++;
while ($irow < $maxrow) { # compute S = (X^2 - WE) / N
    $icol = 0;
    while ($icol < $maxrow) {
        if ($icol < $irow or $icol >= $maxrow - $irow) {
            $stab[$irow][$icol] = 0;
        } else {
            $stab[$irow][$icol] = "(($stab[$irow-1][$icol])^2 - ($stab[$irow-1][$icol-1])*($stab[$irow-1][$icol+1]))"
                    . " / ($stab[$irow-2][$icol])";
        }
        $icol ++;
    } # while icol
    $irow ++;
} # while south

$irow = 0; 
while ($irow < $maxrow) { # print all rows
    &print_row($irow);
    $irow ++;
} # while printing
#---------------
sub print_row {
    my ($ir) = @_;
    my $icol;
    print "----row $irow----\n";
    for ($icol = 0; $icol < $maxcol; $icol ++) {
        print "col $icol:\t$stab[$ir][$icol]\n";
    }
} # print_row
__DATA__
