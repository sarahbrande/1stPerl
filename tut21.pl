# Storing CSV
# This one is store references to hashes instead of arrays of values

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
   my @data;
   my $count=0;
   while(my $line =<INPUT>) {
          chomp $line;     #you can set record separator, default is newline.
	                   # chomp removes trailing record separators. 
			   #print "'$line'\n";
	  my ($name, $payment, $date)= split /\s*,\s*/, $line;  #this regex will get rid of spaces o
          my %values = (
              "Name" => $name, 
              "Payment" => $payment, 
              "Date" => $date, 
          );
	 		   #push @data, $line; old one
	  push @data, \%values;
                                # This one is store references to hashes instead of arrays of values (before with @ had [ on output, now {
				# don't have to remember columns
  }
  close INPUT;
  #foreach my $line(@data){
	  #print Dumper($line); 
  foreach my $data(@data){
          print $data -> {Payment} . "\n"; #use arrow to dereference (get to data).
  }
  print "Descartes: " . $data[3]{"Name"};

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
