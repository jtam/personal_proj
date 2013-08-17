#!/usr/bin/perl

use strict;
use warnings;
use Carp;

my $file = $ARGV[0];

die('Please provide file to read!') unless $file;

if (-e $file) {
    open(MYFILE,$file);
    while(<MYFILE>) {
        chomp;
        print "$_\n";
    }
    close(MYFILE);
}
else {
    print "file $file does not exist!\n";
}
