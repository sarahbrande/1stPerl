#get rid of new lines and spaces
use strict;
use warnings;
use Data::Dumper;
$|=1;

sub main {
   my $input = 'payments.csv';
   unless(open(INPUT, $input)) {
          die "\n Cannot open $input\n"
   }
   <INPUT>;                # gets rid of header,<**> reads a record (which default is a line)
   my @lines;
   my $count=0;
   while(my $line =<INPUT>) {
          chomp $line;     #you can set record separator, default is newline.
	                   # chomp removes trailing record separators. 
	  print "'$line'\n";
	  my @values = split /\s*,\s*/, $line;  #this regex will get rid of spaces 
	  #push @lines, $line; old one
	  push @lines, \@values; #puts the address/ref/pointer in @lines
  }
  close INPUT;
  foreach my $line(@lines){
=comment
	  print $line.  "\n";  #this will print out the array reference:
                              'Isaac Newton , 99.10,15051999'
				'Albert Einstein,13.20,11062012'
				'Carl Scheele,66.23, 01012000'
				'Rene Descartes,0.57,100720
				ARRAY(0x25387a8)
				ARRAY(0x25238e0)
				ARRAY(0x25239d0)
				ARRAY(0x252d088)
=cut
	  print Dumper($line); 
  }

}
main();

=comment
	The print dumper line will now print:
	C:\Users\sarah\Desktop\Udemy\PerlCourse>perl tut17b.pl
	'Isaac Newton , 99.10,15051999'
	'Albert Einstein,13.20,11062012'
	'Carl Scheele,66.23, 01012000'
	'Rene Descartes,0.57,10072033'
	$VAR1 = [
          'Isaac Newton',
          '99.10',
          '15051999'
        ];
	$VAR1 = [
          'Albert Einstein',
          '13.20',
          '11062012'
        ];
	$VAR1 = [
          'Carl Scheele',
          '66.23',
          '01012000'
        ];
	$VAR1 = [
          'Rene Descartes',
          '0.57',
          '10072033'
        ];
=cut
