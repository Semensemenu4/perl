package Cat;
use strict;
use Animal;
our @ISA = qw(Animal);


sub new {
    my($class) = @_;
    my $self = Animal::new($class);
    $self->{name} = 'Cat';

    return $self;
}

sub sayVersion {
    my ($self) = @_;
    print "Делаю что-то свое. Потом вызываю родительский метод:\n";
    $self->SUPER::sayVersion();
}

1;
