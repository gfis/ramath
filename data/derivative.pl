#!/usr/bin/perl

# Compute integer derivates (nested differences) of a formula
# @(#) $Id$
# Copyright (c) 2016 Dr. Georg Fischer
# 2016-01-01
# usage:
#   perl derivative.pl 

use strict;
my @odif = (0,0,0,0,0,0);
my @ndif = @odif;
my $num = 0;
while ($num < 32) {
	my $ind = 0;
	$ndif[$ind] = &form($num);
	while ($ind < scalar(@ndif) - 1 and $ind < $num) {
		$ndif[$ind + 1] = $ndif[$ind] - $odif[$ind];
		$ind ++; 
	} # while $ind
	print " ", sprintf("%2d %10d %10d %10d %10d %10d %10d\n", $num, @ndif);
	# print "----\n";
	$ind = 0;
	while ($ind < scalar(@ndif) - 1) {
		$odif[$ind] = $ndif[$ind];
		$ind ++;
	} # while $ind
	$num ++;
} # while $i

sub form {
	my ($parm) = @_;
	my $res = $parm;
	return $res * $res;
} # form
 
sub form7 {
	my ($parm) = @_;
	my $res = $parm * (27 * $parm + 5);
	return $res;
} # form 

sub form5 {
	my ($parm) = @_;
	my $res = 4 * $parm * (27 * $parm + 5) + 1;
	return $res;
} # form 

sub form4 {
	my ($parm) = @_;
	my $res = 8 * $parm + 1;
	return $res * $res * $res;
} # form 

sub form8 {
	my ($parm) = @_;
	my $res = 2 * $parm * (8*8*$parm*$parm + 3*8*$parm + 3);
	return $res;
} # form 
