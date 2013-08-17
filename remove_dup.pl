#!/usr/bin/perl

use strict;
use warnings;

my $val = 'abcccdddddeeeeeeeeeeeeecccccc';
print "\n Given String: ", $val;

$val =~ y/cd//s; # 'y' is nothing but 'tr'
print "\nAfter :$val\n";
