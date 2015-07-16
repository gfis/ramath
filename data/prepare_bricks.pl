#!perl

# prepare brick triples
# @(#) $Id$
# 2015-07-14, Dr. Georg Fischer

use strict;
use List::Util qw[min max];

    my %triples = ();
    my $tripfile = shift(@ARGV);
    open(TRIP, "<", $tripfile) || die "cannot read $tripfile";
    my $count = 0;
    while (<TRIP>) {
        next if ! m{\[};
        my ($history, $triple) = split();
        $triples{$triple} = $count;
        $count ++;
    } # while <TRIP>
    close(TRIP);

    my $width = 32;
    while (<>) {
        my ($id, @brick) = split();
        # print "/", join(",", @brick), "/\n";
        my @t1 = ($brick[0], $brick[1], int(sqrt($brick[0]*$brick[0] + $brick[1]*$brick[1] + 1)));
        my @t2 = ($brick[0], $brick[2], int(sqrt($brick[0]*$brick[0] + $brick[2]*$brick[2] + 1)));
        my @t3 = ($brick[1], $brick[2], int(sqrt($brick[1]*$brick[1] + $brick[2]*$brick[2] + 1)));
        &testPowerSum(@t1);
        &testPowerSum(@t2);
        &testPowerSum(@t3);
        my $g1 = &gcd3(@t1); 
        my $g2 = &gcd3(@t2); 
        my $g3 = &gcd3(@t3); 
        my @s1 = &reorder(map { $_ / $g1} @t1);
        my @s2 = &reorder(map { $_ / $g2} @t2);
        my @s3 = &reorder(map { $_ / $g3} @t3);
        if (1) {
            @s1 = (@s1, &parm(@s1));
            @s2 = (@s2, &parm(@s2));
            @s3 = (@s3, &parm(@s3));
        }
        my $n1 = $s1[0];
        my $n2 = $s2[0];
        my $n3 = $s3[0];
        my $rt1 = join(",", @s1);
        my $rt2 = join(",", @s2);
        my $rt3 = join(",", @s3);
        $rt1 = ""
                . $rt1 . " " 
        #       . ($triples{$rt1} || "???")
                . "*$g1" 
                ;
        $rt2 = "" 
                . $rt2 . " " 
        #       . ($triples{$rt2} || "???")
                . "*$g2" 
                ;
        $rt3 = ""
                . $rt3 . " " 
        #       . ($triples{$rt3} || "???")
                ."*$g3" 
                ;
        my $temp;
        my $smin = min($n1, min($n2, $n3));
        my $smax = max($n1, max($n2, $n3));
        my $srt1 = ($n1 == $smin                ) ? $rt1 : (($n2 == $smin                ) ? $rt2 : $rt3);
        my $srt2 = ($n1 != $smin && $n1 != $smax) ? $rt1 : (($n2 != $smin && $n2 != $smax) ? $rt2 : $rt3);
        my $srt3 = (                $n1 == $smax) ? $rt1 : ((                $n2 == $smax) ? $rt2 : $rt3);
        print sprintf("%-${width}s %-${width}s %-${width}s\n", $srt1, $srt2, $srt3);
    } # while <> 

sub parm {
	my ($a, $b, $c) = @_;
	my $n = int(sqrt(($c - $a) / 2 + 1));
	my $m = $b / (2 * $n);
	return ($m, $n);
} # parm

sub testPowerSum {
    my ($t1, $t2, $t3) = @_;
    if ($t1*$t1 + $t2*$t2 != $t3*$t3) {
        print STDERR "**** no PowerSum: [$t1,$t2,$t3]\n";
    }
} # testPowerSum

sub reorder {
    my @a = @_;
    my @b = @a;
    if ($b[1] % 2 != 0) {
        $b[1] = $a[0];
        $b[0] = $a[1];
    }
    if ($b[0] > $b[2]) {
        my $temp = $b[0];
        $b[0] = $b[2];
        $b[2] = $temp;
    }
    return @b;
} # reorder

# from http://langref.org/fantom+perl/algorithms/arithmetic/greatest-common-divisor
sub gcd {
    my ($a, $b) = @_;
    ($a, $b) = ($b, $a) if $a > $b; 
    while ($a) { 
        ($a, $b) = ($b % $a, $a) 
    } # while
    return $b;
} # gcd

sub gcd3 {
    my @a = @_;
    return &gcd($a[0], &gcd($a[1], $a[2]));
} # gcd3

# print gcd( 8, 12 );
__DATA__
tripfile:
----------------
X1 [5,12,13]
X2 [21,20,29]
X3 [15,8,17]
----------------
X11 [7,24,25]
X12 [55,48,73]
X13 [45,28,53]
X21 [39,80,89]
X22 [119,120,169]

bricks:
1 240 117 44
2 275 252 240
3 693 480 140
4 720 132 85
5 792 231 160
6 1155 1100 1008
7 1584 1020 187
