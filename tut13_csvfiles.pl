use strict;
use warnings;
$|=1;

sub main {
  my $input = 'test.csv';
  unless(open(INPUT, $input)) {
         die "\n Cannot open $input\n"
  }
  # while(<INPUT>) {
  #	  print $_;   # if don't specify the result $_ is the output same as $line 
  #}
  # <INPUT>;    #record/line ($_)  can be used to peel off a header.
   while(my $line =<INPUT>) {
	  my @values = split ',', $line;                # @=array can split on regex or characters
  	  print $values[0] . "\n";     # . means append

  }
  close INPUT;

}
main();
