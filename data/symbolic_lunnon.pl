#!perl

# Compute Lunnon's quotient-difference table symbolically
# @(#) $Id$
# 2019-08-26, Dr. Georg Fischer

use strict;
use integer;

my $nargs = scalar(@ARGV);
my $ninit = $nargs / 2;
my $maxrow = $ninit + 1;
my @sign =        (splice(@ARGV, 0, $ninit));
my @init =         splice(@ARGV, 0, $ninit);
print "sign= " . join(",", @sign) . "; init=" . join(",", @init) . ";\n";
my $maxcol = $maxrow * 2 + 1;
my $ramath = "java -cp dist/ramath.jar org.teherba.ramath.symbolic.PolyFraction -parse";
my $letters = "abcdefghijklmnopqrstuvwxyz";

my @stab;
my $irow;
my $icol;
$irow = 0;
while ($irow < $maxrow) { # preset with 
    $icol = 0;
    while ($icol < $maxcol) { # initial terms a,b,c ..
        $stab[$irow][$icol] = "?";
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
while ($icol < $maxrow - 1) { # initial terms a,b,c ..
    $stab[$irow][$icol] = substr($letters, $icol, 1);
    $icol ++;
} # while icol

my $ivar = 0; # index for z,y,x, ... - unknown constants
while ($icol < $maxcol) { # recurrence formula
    my $sum = "";
    $ivar = 1;
    while ($ivar < $maxrow) {
        $sum .= "+" . substr($letters, length($letters) - $ivar, 1) . "*($stab[$irow][$icol-$ivar])";
        $ivar ++;
    } # while ivar
    $sum =~ s{\A\s*\+\s*}{}; # omit leading "+ "
    $stab[$irow][$icol] = $sum;
    $icol ++;
} # while icol

$irow = 2; 
while ($irow < $maxrow) { # compute S = (X^2 - WE) / N
    $icol = 0;
    while ($icol < $maxcol) {
        if ($icol < $irow - 1 or $icol > $maxcol - $irow) {
            $stab[$irow][$icol] = "";
        } else {
            my $expr = "(($stab[$irow-1][$icol])^2-($stab[$irow-1][$icol-1])*($stab[$irow-1][$icol+1]))"
                     . "/($stab[$irow-2][$icol])";
            $expr =~ s{ }{}g;
            $expr =~ s{\(([a-z])\)}{$1}g;
            $expr =~ s{\/\(1\)}{}g;
            $stab[$irow][$icol] = $expr;
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
        print "col $icol:\t";
        # my $reduced = `$ramath \"$stab[$ir][$icol]\"`;
        my $reduced = &evaluate("$stab[$ir][$icol]");
        print "$reduced\n";
    }
} # print_row
#----
sub evaluate {
    my ($expr) = @_;
            $expr =~ s{ }{}g;
            $expr =~ s{\(([a-z])\)}{$1}g;
            $expr =~ s{\/\(1\)}{}g;
    my $formula = $expr;
    my 
    $ivar = $ninit - 1;
    while ($ivar >= 0) {
        $formula = substr($letters, $ivar, 1) . "=$init[$ivar]; " . $formula;
        $ivar --;
    } # while $ivar
    $ivar = 0;
    while ($ivar < $ninit) {
        $formula = substr($letters, length($letters) - 1 - $ivar, 1) . "=$sign[$ivar]; " . $formula;
        $ivar ++;
    } # while $ivar
    $formula =~ s{([a-z])}{\$$1}g;
    $formula =~ s{(\$[a-z])=}{my $1=}g;
    $formula =~ s{\^}{\*\*}g;
    # print "eval($formula)\n";
    my $result = eval($formula);
    return "$result = $expr";
} # evaluate
__DATA__
