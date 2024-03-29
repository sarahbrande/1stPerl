use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;
use XML::Simple;

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
	
	process_files(\@files, $input_dir);
}

sub process_files {
	my ($files, $input_dir) = @_;
	
	foreach my $file(@$files) {
		process_file($file, $input_dir);
	}
}

sub process_file {
	my ($file, $input_dir) = @_;
	
	print "Processing $file in $input_dir ... \n";
	
	my $filepath = "$input_dir/$file";
	
	open(INPUTFILE, $filepath) or die "Unable to open $filepath\n";
	
	undef $/;  #undefines record separator. reads whole file instead of line below.
	
	my $content = <INPUTFILE>;
	
	close(INPUTFILE);
	
	print $content;
	
	my $parser = new XML::Simple;  #objects are glorified hashes; this ($parser) is a
	                               # blessed hash (object) That is why objects in perl
				       # use similar hash syntax.
	
	my $dom = $parser->XMLin($content);   #document object model.
	
	print Dumper($dom);
	

	foreach my $band(@{$dom->{"entry"}}) {
		print Dumper($band->{"album"});
	}
}

sub get_files {
	my $input_dir = shift;
	
	unless(opendir(INPUTDIR, $input_dir)) {
		die "\nUnable to open directory '$input_dir'\n";
	}
	
	my @files = readdir(INPUTDIR);
	
	closedir(INPUTDIR);
	
	@files = grep(/\.xml$/i, @files);
	
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
