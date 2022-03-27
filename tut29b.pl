use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$| = 1;

sub main {
	my %opts;
	
	getopts('f:c:r:', \%opts);
	
	print Dumper(%opts);
	
}

main();

