#   This program opens a file, searches a word, in this case, cornflowers and in every instance, prints the line that has t
#   this word.  I jsut reused an old script as the example.
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
	open(INPUT,$input_file) or die("Input file $input_file not found"); #if the 1st arg is true, goes to next line b/c interpreter knows the whole line is true with or statement. put /n after die words to suppress line number report
	my $outputfile = 'output.txt';                        # > might be ugly/confusing
	open(OUTPUT,'>'.$outputfile) or die "can't create output.";  #this concatinates > to push into $output captital OUTPUT could be named anything, nothing special about the name OUTPUT. 
 	while(my $line = <INPUT>) {
		if($line =~ /gr..n/) {                           #if matches green.  You can put a . as a wild card 
		print OUTPUT $line;
                  }													
		}
	close(INPUT);

	close(OUTPUT);
	close(INPUT);
}

main();
