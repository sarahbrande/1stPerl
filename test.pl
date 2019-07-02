use strict;
use warnings;
$|=1;
sub main{
	#1s prob, print hello world
	print "hello World. \n";
	# create an array of fake address, some valid, some not - loop through array and display each email address.  one alpha numeric then an @ then a alpha, then a dot, then alpha numeric.

	my @emails = (
		'Yarrow@dog.com', 
		'Lily@dog.com', 
		'Redfish@stanley.com',
	       	'sldfjdsl', 
		'Sego@dogheaven.com',  #comma optional for last one
	);
	
	for my $email(@emails){
		if($email =~ /\w+\@\w+\.\w+/) {      
                   print "valid: $email  \n";
                }													
		else{
	           print "invalid $email \n";
	        }
        }
}

main();
