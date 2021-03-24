use strict;

my $datetime = '2016-04-11 20:59:03';
my ($date, $time) = ($datetime =~ /(.+)\s(.+)/);

print $date."\n";
print $time."\n";
