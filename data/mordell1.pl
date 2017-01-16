#!/usr/bin/perl

# äöüÄÖÜß
# Extracts relations from the output of test/TE*.this.tst (Fermat/Carcavi/Mordell)
# @(#) $Id$
# Copyright (c) 2017 Dr. Georg Fischer
# 2017-01-14: copied from fermcaw7.pl

use strict;
my (@x); # offsets for variables 
my $factor = 1;
my $count = 0;

while (<>) {
    my $line = $_;
    $line =~ s/\s+\Z//; # chompr
    $line =~ s/\A\s+//; # leading spaces
    if (0) {
    } elsif ($line =~ m{\A--}) {
        print "\n";
        $count = 0;
    } elsif (($line =~ m{\A\[}) and ($line =~ m{unknown})) { # [1+8x,3+8y]: unknown [0,0] -> [3] 2x+8x²-27y-72y²-64y³-3
        @x = m{[\[\,](\d+)\+}g;
        $line =~ m{\+(\d+)};
        $factor = $1;
        if ($count == 0) {
            print "$factor:\n\t";
        } elsif ($count % 4 == 0) {
            print "\n\t";
        }
        my $const = "+0";
        if ($line =~ m{([\-\+\d]+)\Z}) {
            $const = $1 + 0;
        }
        print "$x[0],$x[1]:$const\t";
        $count ++;
    }
} # while <>
print "\n";

__DATA__
Expanding for base=2, reasons+features=base,similiar invall,norm,showfail
Refined variables=x,y
[0+1x,0+1y]:    unknown -> [1] [0,0] x²-y³+2
----------------
expanding queue[0]^-1,meter=[2,2]: x²-y³+2
[0+2x,0+2y]:    failure constant=1, vgcd=2 [0,0] 2x²-4y³+1
[1+2x,0+2y]:    failure constant=3, vgcd=4 [1,0] 4x+4x²-8y³+3
[0+2x,1+2y]:    failure constant=1, vgcd=2 [0,1] 4x²-6y-12y²-8y³+1
[1+2x,1+2y]:    unknown -> [1] [1,1] 2x+2x²-3y-6y²-4y³+1
----------------
expanding queue[1]^0,meter=[2,2]: 2x+2x²-3y-6y²-4y³+1
[1+4x,1+4y]:    failure constant=1, vgcd=2 [0,0] 4x+8x²-6y-24y²-32y³+1
[3+4x,1+4y]:    failure constant=5, vgcd=2 [1,0] 12x+8x²-6y-24y²-32y³+5
[1+4x,3+4y]:    unknown -> [2] [0,1] 2x+4x²-27y-36y²-16y³-6
-> solution [5,3],NONTRIVIAL
[3+4x,3+4y]:    unknown -> [3] [1,1] 6x+4x²-27y-36y²-16y³-4
----------------
expanding queue[2]^1,meter=[2,2]: 2x+4x²-27y-36y²-16y³-6
[1+8x,3+8y]:    unknown -> [4] [0,0] 2x+8x²-27y-72y²-64y³-3
[5+8x,3+8y]:    unknown -> [5] [1,0] 10x+8x²-27y-72y²-64y³
-> solution [5,3],NONTRIVIAL
[1+8x,7+8y]:    failure constant=-85, vgcd=2 [0,1] 4x+16x²-294y-336y²-128y³-85
[5+8x,7+8y]:    failure constant=-79, vgcd=2 [1,1] 20x+16x²-294y-336y²-128y³-79
expanding queue[3]^1,meter=[2,2]: 6x+4x²-27y-36y²-16y³-4
[3+8x,3+8y]:    unknown -> [6] [0,0] 6x+8x²-27y-72y²-64y³-2
[7+8x,3+8y]:    unknown -> [7] [1,0] 14x+8x²-27y-72y²-64y³+3
[3+8x,7+8y]:    failure constant=-83, vgcd=2 [0,1] 12x+16x²-294y-336y²-128y³-83
[7+8x,7+8y]:    failure constant=-73, vgcd=2 [1,1] 28x+16x²-294y-336y²-128y³-73
----------------
expanding queue[4]^2,meter=[2,2]: 2x+8x²-27y-72y²-64y³-3
[1+16x,3+16y]:  failure constant=-3, vgcd=2 [0,0] 4x+32x²-54y-288y²-512y³-3
[9+16x,3+16y]:  failure constant=7, vgcd=2 [1,0] 36x+32x²-54y-288y²-512y³+7
[1+16x,11+16y]: unknown -> [8] [0,1] 2x+16x²-363y-528y²-256y³-83
[9+16x,11+16y]: unknown -> [9] [1,1] 18x+16x²-363y-528y²-256y³-78
expanding queue[5]^2,meter=[2,2]: 10x+8x²-27y-72y²-64y³
[5+16x,3+16y]:  unknown -> [10] [0,0] 10x+16x²-27y-144y²-256y³
-> solution [5,3],NONTRIVIAL
[13+16x,3+16y]: unknown -> [11] [1,0] 26x+16x²-27y-144y²-256y³+9
[5+16x,11+16y]: failure constant=-163, vgcd=2 [0,1] 20x+32x²-726y-1056y²-512y³-163
[13+16x,11+16y]:    failure constant=-145, vgcd=2 [1,1] 52x+32x²-726y-1056y²-512y³-145
expanding queue[6]^3,meter=[2,2]: 6x+8x²-27y-72y²-64y³-2
[3+16x,3+16y]:  unknown -> [12] [0,0] 6x+16x²-27y-144y²-256y³-1
[11+16x,3+16y]: unknown -> [13] [1,0] 22x+16x²-27y-144y²-256y³+6
[3+16x,11+16y]: failure constant=-165, vgcd=2 [0,1] 12x+32x²-726y-1056y²-512y³-165
[11+16x,11+16y]:    failure constant=-151, vgcd=2 [1,1] 44x+32x²-726y-1056y²-512y³-151
expanding queue[7]^3,meter=[2,2]: 14x+8x²-27y-72y²-64y³+3
[7+16x,3+16y]:  failure constant=3, vgcd=2 [0,0] 28x+32x²-54y-288y²-512y³+3
[15+16x,3+16y]: failure constant=25, vgcd=2 [1,0] 60x+32x²-54y-288y²-512y³+25
[7+16x,11+16y]: unknown -> [14] [0,1] 14x+16x²-363y-528y²-256y³-80
[15+16x,11+16y]:    unknown -> [15] [1,1] 30x+16x²-363y-528y²-256y³-69
----------------
...