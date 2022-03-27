use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$| = 1;

sub main {
	
	print Dumper(@ARGV);  ## Array ARGV is command line argumentsarray wi perl

	print Dumper($ARGV[0]); 
	}

main();

