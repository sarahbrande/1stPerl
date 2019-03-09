use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main 
{ 
	my $output = 'output.txt';                        # > might be ugly/confusing
	open(OUTPUT,'>'.$output) or die "can't create output.";  #this concatinates > to push into $output captital OUTPUT could be named anything, nothing special about the name OUTPUT. 
	print OUTPUT "Hello Marvelite. \n";
	close(OUTPUT);
}

main();
