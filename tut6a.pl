use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main 
{ 
	my $output = '>output.txt';
	open(OUTPUT,$output) or die "can't create output.";
	close(OUTPUT);
}

main();
