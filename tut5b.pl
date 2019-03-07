use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main 
{
	my $file='C:\Users\sarah\Desktop\Udemy\PerlCourse\tut4';
	open(INPUT,$file) or die("Input file $file not found"); #if the 1st arg is true, goes to next line b/c interpreter knows the whole line is true with or statement. put /n after die words to suppress line number report

  while(my $line = <INPUT>) {
									print $line;
									}
	close(INPUT);
}

main();
