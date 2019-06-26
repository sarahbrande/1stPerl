use strict;                                               #forces variable declarations
use warnings;     
$|=1;                                                     #turns off buffering to terminal on linux/unix systems
sub main {
    #\d digit
    #\s space
    #\S nonspace
    #\w alphnumeric + underscore
    # * zero or more of preceding character greedy as many as possible
    # *? zero or more of preceding character nongreedy as few as possible
    # + 1 or more of preceding character greedy
    # . single wildcard
    # .* any
    # {#} # of the preceding
    # {3,6} at least 3, at most 6
    # {3,} at least 3
    
    my $text = 'DE75883';

    # if ($text =~ /(\d*)/){               # =~ is matches, what is in () is $1, * means 0 or more times
    #	 print "1st Matched: '$1'\n";       # since it is 0 or more, it will always match
    #}
    ###    if ($text =~ /(\d+)/){               # =~ is matches, what is in () is $1, * means 0 or more times
    ### 	 print "2nd Matched: '$1'\n";
    ###}
    ### if ($text =~ /(am\s\d+)/){               # \s will match a single space or a single tab 
    ###	 print "3rd Matched: '$1'\n";
    ###}
    ### if ($text =~ /(y\S+)/){               # \S will match non space (so catches word)
    ###	 print "4th Matched: '$1'\n";
    ###
    if ($text =~ /(DE.....)/){               #
    	 print "tut11a Matched: '$1'\n";
    }
    if ($text =~ /(DE\d\d\d\d\d)/){               #
    	 print "also Matched: '$1'\n";
    }
    if ($text =~ /(DE\d{5})/){               #
    	 print "also Matched with \\d{5}: '$1'\n";  # put \\ to escape the escape
    }
    if ($text =~ /(DE\d{3,6})/){               #
    	 print "also Matched with \\d{3,6}: '$1'\n";
    }
    if ($text =~ /(DE\d{3,4})/){               #
    	 print "also Matched with \\d{3,4}: '$1'\n";
    }
    if ($text =~ /(DE\d{3,})/){               #
    	 print "also Matched with \\d{3,}: '$1'\n";
    }

}

main();
