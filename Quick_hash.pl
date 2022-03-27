#!/usr/bin/perl
use warnings;
use strict;

# defines country => language hash
my %langs =  ( England => 'English',
	       France => 'French', 
	       Spain => 'Spanish', 
	       China => 'Chinese', 
	       Germany => 'German');

for(keys %langs){
	print("Official Language of $_ is $langs{$_}\n");
}


# ************************************************************
=pod
Introduction to Perl hash
A Perl hash is defined by key-value pairs. Perl stores elements of a hash in such an optimal way that you can look up its values based on keys very fast.

With the array, you use indices to access its elements. However, you must use descriptive keys to access hash’s element. A hash is sometimes referred to as an associative array.

Like a scalar or an array variable, a hash variable has its own prefix. A hash variable must begin with a percent sign ( %). The prefix % looks like key/value pair so remember this trick to name the hash variables.

The following example defines a simple hash.

my %countries = qw(England English 
                   France French 
                   Spain Spanish 
                   China Chinese 
                   Germany German);
Code language: Perl (perl)
To make the code easier to read, Perl provides the => operator as an alternative to a comma (,). It helps differentiate between keys and values, and makes the code more elegant.

When you see the => operator, you know that you are dealing with a hash, not a list or an array.

The $countries hash can be rewritten using => operator as follows:

my %countries =  ( England => 'English',
	           France => 'French', 
    	           Spain => 'Spanish', 
    	           China => 'Chinese', 
	           Germany => 'German');
Code language: Perl (perl)
Perl requires the keys of a hash to be strings, meanwhile, the values can be any scalars. If you use non-string values as the keys, you may get an unexpected result.

In addition, a hash key must be unique. If you try to add a new key-value pair with the key that already exists, the value of the existing key will be over-written.

Notice that you can omit the quotation in the keys of the hash.

Perl hash operations
In the following section, we will examine the most commonly used operation in the hash.

Look-up Perl hash values
You use a hash key inside curly brackets {} to look up a hash value. Take a look at the following example:

#!/usr/bin/perl
use warnings;
use strict;
# defines country => language hash
my %langs = ( England => 'English',
 France => 'French', 
 Spain => 'Spanish', 
 China => 'Chinese', 
 Germany => 'German');
# get language of England
my $lang = $langs{'England'}; # English
print($lang,"\n");
Code language: Perl (perl)
Add a new element
To add a new element to hash, you use a new key-pair value as follows:

$langs{'Italy'} = 'Italian';
Code language: Perl (perl)
Remove a single key/value pair
If you know the hash key, you can remove single key-value pair from the hash by using delete() function as follows:

delete $langs{'China'};
Code language: Perl (perl)
Modify hash elements
You can modify value of existing key/value pair by assigning a new value as shown in the following example:

# add new key value pair
$langs{'India'} = 'Many languages';
# modify official language of India
$langs{'India'} = 'Hindi'; #
Code language: Perl (perl)
Loop over Perl hash elements
Perl provides the keys() function that allows you to get a list of keys in scalars. You can use the keys() function in a for loop statement to iterate the hash elements:

#!/usr/bin/perl
use warnings;
use strict;

# defines country => language hash
my %langs =  ( England => 'English',
	       France => 'French', 
	       Spain => 'Spanish', 
	       China => 'Chinese', 
	       Germany => 'German');

for(keys %langs){
	print("Official Language of $_ is $langs{$_}\n");
}
Code language: Perl (perl)
The keys() function returns a list of hash’s keys. The for loop visits each key and assigns it to a special variable $_. Inside the loop, we access the value of a hash element via its key as $langs{$_}.

In this tutorial, you’ve learned about Perl hash and some techniques to manipulate hash’s elements.

https://www.perltutorial.org/perl-hash/

=cut
