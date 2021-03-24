package Animal;
use strict;

sub new {
    my($class) = @_;
    my $self = {
        name => 'Animal',
        version => '1.0',
    };
    bless $self, $class;

    return $self;
}

sub sayVersion {
    my ($self) = @_;
    print "Version: ".$self->{version}.".\n";
}

sub sayName {
    my ($self) = @_;
    print "Name: ".$self->{name}.".\n";
}

1;