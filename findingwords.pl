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

	my $words_file='C:\Users\sarah\Desktop\Udemy\PerlCourse\words.txt'; # found a text file of Seuss books.
	open(WORDS,$words_file) or die("Input file $words_file not found"); #

	my $outputfile = 'output.txt';                                      #
	open(OUTPUT,'>'.$outputfile) or die "can't create output.";         #

 	while(my $line = <INPUT>) {
		#		if($line =~ /gr..n/) {                                      #
		if($line =~ /(gr..n)(e..)(...)/) {                                      #
		print "$1 $2 $3\n";
		print "first match: '$1' ;second match:'$2' $3\n";
                  }													
		}
	close(INPUT);

	#	close(OUTPUT);
	close(INPUT);
}

main();
