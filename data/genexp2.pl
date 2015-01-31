#!/usr/bin/perl

# generate Java conditions
# @(#) $Id$
# 2013-08-13, Georg Fischer. Berliner Mauer vor 52 Jahren

use strict;

	while (<DATA>) {
		s/\s+\Z//; # chompr 
		my $line = $_;
		$line =~ s{(a\d\d)\^2}{$1\*$1}g;
		$line =~ s{a}{m}g;
		$line =~ s{\-}{==};
		if ($line =~ m{\A\s*\Z}) {
			print "\n";
		} else {
			print "\t\tif ($line) {\n";
		}
	} # while DATA
__DATA__
a11*a12*a13 + a21*a22*a23 + a31*a32*a33 - a41*a42*a43
a11*a12*a14 + a21*a22*a24 + a31*a32*a34 - a41*a42*a44
a11*a13*a14 + a21*a23*a24 + a31*a33*a34 - a41*a43*a44
a12*a13*a14 + a22*a23*a24 + a32*a33*a34 - a42*a43*a44

a11*a12^2 + a21*a22^2 + a31*a32^2 - a41*a42^2
a11*a13^2 + a21*a23^2 + a31*a33^2 - a41*a43^2
a11*a14^2 + a21*a24^2 + a31*a34^2 - a41*a44^2

a11^2*a12 + a21^2*a22 + a31^2*a32 - a41^2*a42
a11^2*a13 + a21^2*a23 + a31^2*a33 - a41^2*a43
a11^2*a14 + a21^2*a24 + a31^2*a34 - a41^2*a44

a12*a13^2 + a22*a23^2 + a32*a33^2 - a42*a43^2
a12*a14^2 + a22*a24^2 + a32*a34^2 - a42*a44^2
a13*a14^2 + a23*a24^2 + a33*a34^2 - a43*a44^2

a12^2*a13 + a22^2*a23 + a32^2*a33 - a42^2*a43
a12^2*a14 + a22^2*a24 + a32^2*a34 - a42^2*a44
a13^2*a14 + a23^2*a24 + a33^2*a34 - a43^2*a44
 