# -*- perl -*-

# t/002_simple.t - check module loading and create testing directory

use Test::More tests => 8;

use Parse::Name;

my $name = "rObErT lEwiS BoOnE";
my $name2 = "BoOne, RoBErt lewiS";

my $parser = Parse::Name->new($name);
my $parser2 = Parse::Name->new($name2);

is($parser->fname,"Robert","Is the first name 'Robert'");
is($parser->mname,"Lewis" ,"Is the middle name 'Lewis'");
is($parser->lname,"Boone" ,"Is the last name 'Boone'"); 
is($parser->mi,"L" ,"Is the Middle initial 'L'"); 

is($parser2->fname,"Robert","Is the first name 'Robert'");
is($parser2->mname,"Lewis" ,"Is the middle name 'Lewis'");
is($parser2->lname,"Boone" ,"Is the last name 'Boone'"); 
is($parser2->mi,"L" ,"Is the Middle initial 'L'"); 
