use strict;
use warnings;
use LWP::Simple;
sub main 
{
	print "downloading...\n";
	#print get("http://boiseclimbs.com"); #intructor's didn't work so went with one I wrote the original for in the 90s so completely HTML
	getstore("http://boiseclimbs.com","bclimbs.html"); 
	print "fertig...\n";

}

main();
