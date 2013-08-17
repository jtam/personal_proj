package Person;

use strict;
use warnings;

my @Everyone;
sub new {
    my $class = shift;
    my $self = {@_};
    bless($self, $class);
    $self->_init();
    return $self;
}

sub _init {
    my $self = shift;

    push @Everyone, $self;
}

sub address {
    my $self = shift;

    $self->{address} = $_[1] if defined $_[1];

    return $self->{address};
}

sub surname {
    my $self = shift;

    $self->{surname} = $_[1] if defined $_[1];

    return $self->{surname};
}

sub forename {
    my $self = shift;

    $self->{forename} = $_[1] if defined $_[1];

    return $self->{forename};
}

sub phone_no {
    my $self = shift;

    $self->{phone_no} = $_[1] if defined $_[1];

    return $self->{phone_no};
}

sub headcount {
    return scalar @Everyone;
}

sub everyone {
    return @Everyone;
}

sub full_name {
    my $self = shift;
    return $self->forename() . ' ' . $self->surname();
}

1;
