#!/usr/bin/perl

use strict;
use warnings;
use Employee;

my $employee = Employee->new(
    surname  => 'Wong',
    forename => 'Fu',
    phone_no => '111-111-1111',
    address  => '123 sesame street',
    salary   => 50000,
);

print $employee->full_name() . " earns " . $employee->salary() . "\n";
$employee->raise(1.5);
print $employee->full_name() . " after raise earns " . $employee->salary() . "\n";

