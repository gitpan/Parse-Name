# -*- perl -*-

# t/002_simple.t - check module loading and create testing directory

use Test::More tests => 4;

use Parse::Name;

my $name = "Robert Lewis Boone";

my $parser = Parse::Name->new($name);

is($parser->fname,"Robert","Is the first name 'Robert'");
is($parser->mname,"Lewis" ,"Is the middle name 'Lewis'");
is($parser->lname,"Boone" ,"Is the last name 'Boone'"); 
is($parser->mi,"L" ,"Is the Middle initial 'L'"); 
