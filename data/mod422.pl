#!/usr/bin/perl

# Determine mod 2^n of EEC(4,2,2) data from 
# Copyright (c) 2015 Dr. Georg Fischer
# 2015-08-28: copied from genhash.pl
#------------------------------------
use strict;

    my $pow2 = shift(@ARGV);
    my %hash = ();
    my @mods = ();
    my $t;
    while (<>) {
        s/\s+\Z//; # chompr
        if (m{unknown} and m{\A\[\d+\+$pow2\D}) {
            # [1+4*a,0+4*b,1+4*c,0+4*d]:    unknown -> [3] a+6*a^2+16*a^3+16*a^4+16*b^4-c-6*c^2-16*c^3-16*c^4-16*d^4
            s{\:.*}{}; # remove all behind ':'
            s{\A\[}{\,};
            @mods = m{\,(\d+)\+}g;
            # print "test: " . join(";", @mods) . "\n";
            &store();
        } elsif (m{\A\d}) {
            @mods = map { $_ % $pow2    } split(/\s+/, $_);
            &store();
        }
        
    } # while <>

    my $count = 0;
    foreach my $key (sort(keys(%hash))) {
        print $key . "\t\t" . $hash{$key} . "\n";
        $count ++;
    }
    print "$count tuples\n";
    
sub store {
        if ($mods[0] > $mods[1]) { # sort first 2 ascending
            $t = $mods[0]; $mods[0] = $mods[1]; $mods[1] = $t;
        }
        if ($mods[2] > $mods[3]) { # sort last 2 ascending
            $t = $mods[2]; $mods[2] = $mods[3]; $mods[3] = $t;
        }
        if ($mods[0] + $mods[1] > $mods[2] + $mods[3]) { # sort pairs
            $t = $mods[0]; $mods[0] = $mods[2]; $mods[2] = $t;
            $t = $mods[1]; $mods[1] = $mods[3]; $mods[3] = $t;
        } # sort pairs
        my $strs = join(",", @mods);
        if (defined($hash{$strs})) {
            $hash{$strs} ++;
        } else {
            $hash{$strs} = 1;
        }
} # store
__DATA__
158 59 134 133
239 7 227 157
292 193 257 256
502 271 497 298
542 103 514 359
631 222 558 503
1203 76 1176 653
1381 878 1342 997
2189 1324 1997 1784
2461 1042 2141 2026
2797 248 2524 2131
2949 1034 2854 1797
3190 1577 2986 2345
3494 1623 3351 2338
3537 661 3147 2767
4849 3364 4303 4288