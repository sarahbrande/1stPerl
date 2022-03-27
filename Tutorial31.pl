use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$| = 1;

=pod
        pod and cut  multiline comment plain old documentation
	This is ACME XML parser version 1.0
	Use with care.
	
=cut

sub main {
	my %opts;
	
	# Get command line options
	getopts('af:c', \%opts);
	
	if(!checkusage()) {
		usageErrorMess();
	} 
}

sub checkusage {
	return 0;
}

sub usageErrorMess {
	my $help = <<USAGE;
	#	print <<USAGE;
	
usageErrorMess: perl main.pl <options>
	-f <file name>	specify XML file name to parse
	-a	turn off error checking

example usage:
	perl main.pl -f test.xml -a
	
USAGE
        die $help;	
#       exit();
}

main();
