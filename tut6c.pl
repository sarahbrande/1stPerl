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
use strict;                                                          #forces variable declarations
use warnings;     
$|=1;                                                                #turns off buffering to terminal on linux/unix systems
sub main 
{ 
	my $input_file='C:\Users\sarah\Desktop\Udemy\PerlCourse\tut4';
	open(INPUT,$input_file) or die("Input file $input_file not found"); #if the 1st arg is true, goes to next line b/c interpreter knows the whole line is true with or statement. put /n after die words to suppress line number report
	my $outputfile = 'output.txt';                               # > (took out) might be ugly/confusing
	open(OUTPUT,'>'.$outputfile) or die "can't create output.";  #this concatinates > to push into $output captital OUTPUT could be named anything, nothing special about the name OUTPUT. 
# fun begins
 	while(my $line = <INPUT>) {
		if($line =~ s/cornflowers/bachelor buttons/ig) {     # ~=matches the slashes tell it to search (awk-like) actually, almost exactly vi i=case insensitive, g global (like vi_)
		print OUTPUT $line;
                  }													
		}
	close(INPUT);

	close(OUTPUT);
	close(INPUT);
}

main();
