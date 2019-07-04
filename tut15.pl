#get rid of new lines and spaces
use strict;
use warnings;
use Data::Dumper;
$|=1;

sub main {
  my $input = 'test.csv';
  unless(open(INPUT, $input)) {
         die "\n Cannot open $input\n"
  }
   while(my $line =<INPUT>) {
          chomp $line;  #you can set record separator, default is newline.
	  # chomp removes trailing record separators. 
	  print "'$line'\n";
	  # my @values = split ',', $line;  
	  my @values = split /\s*,\s*/, $line;  #this regex will get rid of spaces 
	    print Dumper(@values);

  }
  close INPUT;

}
main();
