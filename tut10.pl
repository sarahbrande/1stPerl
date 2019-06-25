use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main {
    #\d digit
    #\s space
    #\S nonspace
    #\w alphnumeric + underscore
    
    my $text = 'I am 117 years old tomorrow';

    if ($text =~ /(\d*)/){               # =~ is matches, what is in () is $1, * means 0 or more times
    	 print "1st Matched: '$1'\n";       # since it is 0 or more, it will always match
    }
    if ($text =~ /(\d+)/){               # =~ is matches, what is in () is $1, * means 0 or more times
    	 print "2nd Matched: '$1'\n";
    }
    if ($text =~ /(am\s\d+)/){               # \s will match a single space or a single tab 
    	 print "3rd Matched: '$1'\n";
    }
    if ($text =~ /(y\S+)/){               # \S will match non space (so catches word)
    	 print "4th Matched: '$1'\n";
    }

}

main();
