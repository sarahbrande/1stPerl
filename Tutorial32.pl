use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$| = 1;

=pod

	This is ACME XML parser version 1.0
	Use with care.

       my keyword in Perl declares the listed variable to be local to the enclosing block in which it is defined.
 
   pod and cut  multiline comment plain old documentation
     
     $| = 1; forces a flush after every write or print, so the output appears as soon as it's generated rather than being buffered  
	
=cut

sub main {
	my %opts;
	
	# Get command line options
	getopts('af:c', \%opts);
	
	if(!checkusage("Hello", 7)) {
		usage();
	} 
}

sub checkusage {
	
	print Dumper(@_); 
	 my $greeting = shift;
	print Dumper(@_); 
	 my $number = shift;
	print Dumper(@_); 
	
	#my ($greeting, $number) = @_;
	
	print "$greeting number $number\n";
	print Dumper(@_); 
	

	
	return 1;
}

sub usage {
	print <<USAGE;
	
usage: perl main.pl <options>
	-f <file name>	specify XML file name to parse
	-a	turn off error checking

example usage:
	perl main.pl -f test.xml -a
	
USAGE
	
	exit();
}

main();
