use strict;
use warnings;
use LWP::Simple;
sub main 
{
	print "downloading...\n";
	#print get("http://boiseclimbs.com"); #
	#jgetstore("http://boiseclimbs.com","bclimbs.html"); 
my $code = getstore('https://www.maykool.com/fashion-blog/wp-content/uploads/2013/03/Corn-Flowers-By-Pol-Ledent.jpg', "PolLedentPainting.png"); 
if ($code == 200)
{
	print "GotBeauty...\n";
}
else
{
	print "Keep hacking...\n";
}
	print "fertig...\n";
}

main();
