#!/usr/bin/perl
# @(#) $Id$
use strict;

my $num = shift(@ARGV);
my $b = oct($num);
my $b2 = $b * $b;
print sprintf("%b^2 = %b", $b, $b2) . "\n";
