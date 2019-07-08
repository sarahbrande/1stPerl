# Storing CSV
# This one gets rid of bland line ~19 
# Also checks for less than 3 fields line28-31  


use strict;
use warnings;
use Data::Dumper;
$|=1;

sub main {
   my $input = 'payments2.csv';
   unless(open(INPUT, $input)) {
          die "\n Cannot open $input\n"
   }
   <INPUT>;                # gets rid of header,<**> reads a record (which default is a line)
   my @data;
   my $count=0;
   LINE: while(my $line =<INPUT>) {
          $line =~ /\S/ or next;  #  skips blank lines
                                  # makes sure there are right number of fields in line
                                 
          chomp $line;     #you can set record separator, default is newline.
	                   # chomp removes trailing record separators. 
			   #print "'$line'\n";

	  my @values = split /\s*,\s*/, $line;  #this regex will get rid of spaces o
          if (scalar(@values) < 3) {
             print "Invalid Line: $line\n";
             next;
          }

          foreach my $value(@values){
              if($value eq ''){
              print "Invalid null vaule $line \n";
              next LINE;
              }
          } 

	  my ($name, $payment, $date)= @values;  #this regex will get rid of spaces o


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
  print "Descartes: " . $data[3]{"Name"};  #Don't need to derefernce don't know why.

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
