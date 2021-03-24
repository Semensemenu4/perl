use strict;
use lib "./";
use Cat;


my $second = Cat->new();
$second->sayName();
$second->sayVersion(); # перекрытый метод
