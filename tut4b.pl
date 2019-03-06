use strict;
use warnings;
use LWP::Simple;
sub main 
{
 my $file='C:\Users\sarah\Desktop\Udemy\PerlCourse\PolLedentPainting.png';
 if (-f $file)
{
 print "found cornflowers file $file\n";
}
else
{
 print "Keep hacking..you'll find it.\n";
}
print "fertig...\n";
}

main();
