use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffer on linux/unix systems
sub main 
{
 my @files =
 (
	'C:\Users\sarah\Desktop\Udemy\PerlCourse\tut4.pl', 
	'C:\Users\sarah\Desktop\Udemy\PerlCourse\PolLedentPainting.png',
	'C:\Users\sarah\Desktop\Udemy\PerlCourse\tut4.pl',
 ); 
 foreach my $file(@files) {
  if (-f $file)                                          # -f checks if the file is a plain file
	{
    print "found file: $file\n";
	}
	else
	{
	 print "did find the file in the array.\n";
	}
	
}
print "fertig...\n";
}

main();
