# 
#  Findin out what you matched
#
#
#
#
#
#
#
#
use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main 
{ 
	my $input_file='C:\Users\sarah\Desktop\Udemy\PerlCourse\Seuss.txt'; # found a text file of Seuss books.
	open(INPUT,$input_file) or die("Input file $input_file not found"); #
	#my $outputfile = 'output.txt';                                      #
	#open(OUTPUT,'>'.$outputfile) or die "can't create output.";         #
 	while(my $line = <INPUT>) {
		#		if($line =~ /gr..n/) {                                      #
		if($line =~ /fish/) {                                      #
		print $line;
                  }													
		}
	close(INPUT);

	#	close(OUTPUT);
	close(INPUT);
}

main();
