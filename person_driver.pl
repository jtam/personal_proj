#!/usr/bin/perl

use strict;
use warnings;
use Person;

my $person = Person->new(
    surname => 'Wong',
    forename => 'Fu',
    phone_no => '111-111-1111',
    address  => '123 sesame street',
);

print $person->full_name . "\n";

