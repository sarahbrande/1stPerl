use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

$| = 1;

=pod

	This is ACME XML parser version 1.0
	Use with care.
	
=cut

sub main {
	my %opts;
	
	# Get command line options
	getopts('d:r', \%opts);
	
	if(!checkusage(\%opts)) {
		usage();
		exit();
	} 
	
	my $input_dir = $opts{"d"};

	my @files = get_files($input_dir);
	
	process_files(\@files, $input_dir);                                         	#	\@files is a reference to the arry
}

sub process_files {
	my ($files, $input_dir) = @_; # technique for getting multiple arguments, needs (); @_ where args to subroutines are placed.

	
	print "$input_dir\n";
	print Dumper($files);
=pod
        $files is a scalar (below in foreach), not an array; actually a referece to an array, but can cast it to an actual array by putting an @sign in front. 
       
=cut	
	foreach my $file(@$files) {
		process_file($file, $input_dir);
	}
}

sub process_file {
	my ($file, $input_dir) = @_;
	
	print "Processing $file in $input_dir .\n";
	#	print Dumper( grep(/#/,$file));  #figure this out later.  need to open the file and grep	
}

sub get_files {
	my $input_dir = shift;
	
	unless(opendir(INPUTDIR, $input_dir)) {
		die "\nUnable to open directory '$input_dir'\n";
	}
	
	my @files = readdir(INPUTDIR);
	
	closedir(INPUTDIR);
	
	@files = grep(/\.pl$/i, @files);
	
	return @files;
}

sub checkusage {
	my $opts = shift;
	
	my $r = $opts->{"r"};
	my $d = $opts->{"d"};
	
	# Image a is optional; don't really need to refer to it here at all.
	
	# r is optional
	# d is mandatory.
	
	unless(defined($d)) {
		return 0;
	}
	
	return 1;
}

sub usage {
	print <<USAGE;
	
usage: perl main.pl <options>
	-d <directory>	specify directory in which to find XML files.
	-r run the program; process the files

example usage:
	# Process files in currect directory.
	perl main.pl -d . -r
	
USAGE
}

main();
