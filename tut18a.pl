# hashes and loopup tables
use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {
           # hash starts with % look up table.  keys to access values
	   # Don't remember order
	my %months = (      
		1 => "Jan",
		12 => "Dec",   #Don't have to put quotes, but good idea
		5 => "May",
		3 => "Mar",
		7 => "Jul",
	);
	
	print $months{5} . "\n";
	
	my %days;
	
	$days{"Sunday"} = 1;
	$days{"Monday"} = 2;
	$days{"Friday"} = 6;
	
	my $day = $days{"Friday"};
	print "Friday is day $day\n";

	#  one way to iterate through hasth
	my @months = keys %months;   #ok to use same name since hash & array.
	for my $month(@months) {          # month arbitrary name again
	    my $value = $months{$month};  #$month=key
	    print "$month: $value\n\n";
	}
	# another way to iterate through hash
	# #key,vlu in brackets because declaring 2 instDead of 1.
	while(my ($key, $value) = each %days) {  
		print "$key: $value \n";
        }

}

main();

