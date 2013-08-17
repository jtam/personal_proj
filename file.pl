#!/usr/bin/perl

use strict;
use warnings;

my $file = '/Users/jtam/personal_proj/foo';

if (-e $file) {
    print "file $file exists\n";
}
else {
    print "file $file does not exist\n";

    open(MYFILE, ">>$file");
    print MYFILE "foo\nbar\n";
    close(MYFILE);
    
    print "now file $file exists\n";
}
