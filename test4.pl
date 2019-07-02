use strict;
use warnings;
$|=1;
sub main{
	my @texts = "the code for this device is GP1234."; 
	;
	
	for my $text(@texts){
		#	if($text =~ /is\s([a-zA-Z][a-zA-Z]\d{4})/) {  #put whole RE in () to form group we can refer to as $1     
		if($text =~ /is ([a-zA-Z][a-zA-Z]\d{2,6})\./) {  #put whole RE in () to form group we can refer to as $1     
                   print "valid: $1  \n";
                }													
		elsif ($text =~ / is (.+?)\./) {
	              print "invalid code $1 \n";
	        }
		else {
	              print "invalid code  \n";
	        }
        }
}

main();
