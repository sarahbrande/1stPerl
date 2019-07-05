#get rid of new lines and spaces
use strict;
use warnings;
use Data::Dumper;
$|=1;

sub main {
   my $input = 'tut16.csv';
   unless(open(INPUT, $input)) {
          die "\n Cannot open $input\n"
   }
   <INPUT>;  # gets rid of header,<**> reads a record (which default is a line)
   my @lines;
   my $count=0;
   while(my $line =<INPUT>) {
          chomp $line;  #you can set record separator, default is newline.
	  # chomp removes trailing record separators. 
	  print "'$line'\n";
	  # my @values = split ',', $line;  
	  my @values = split /\s*,\s*/, $line;  #this regex will get rid of spaces 
	  push @lines, $line;
  }
  close INPUT;
  foreach my $line(@lines){
	  print $line.  "\n";
  }

}
main();
