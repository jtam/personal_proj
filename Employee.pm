package Employee;

use strict;
use warnings;

use Person;
use Carp;

our @ISA = qw(Person);

sub salary {
    my $self = shift;
    my $new_salary = shift;

    $self->{salary} = $new_salary if defined $new_salary;
#carp "salary is $_[1]\n" if defined $_[1];

    return $self->{salary};
}

sub raise {
    my $self = shift;
    my $raise = shift;
#    my $new_salary = $self->salary() * $raise;
#carp "raise is $raise\n";
#carp "new salary is $new_salary\n";


#    $self->salary($new_salary);
    $self->salary($self->salary() * $raise);

    return $self;
}

1;
