#!/usr/bin/perl

use strict;
use warnings;

my @array = qw/10 10 20 20 30 40 40 40 50 50/;
print "array with dups: @array\n";

my %occurances = ();

foreach my $item (@array) {
    $occurances{$item}++;
}

my @unique_array = (keys %occurances);

print "uniq array: @unique_array\n";
