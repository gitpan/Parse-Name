package Parse::Name;
use strict;
use warnings;

use base qw/ Class::Accessor::Chained /;
__PACKAGE__->mk_accessors(qw/ fname mname lname /);

our $VERSION = 0.02;

sub new {
	my $class = shift;
	my $self = bless {},$class;
	$self->init(shift);
}


sub init {
	my $self = shift;
	my $name = shift;

	my @name = split / /,$name;

	for (@name) {
		s/\,//;
		$_ = lc($_);
		$_ = ucfirst($_);
	}
		

	if ($name =~ /,/) {
		$self->lname($name[0])
		     ->fname($name[1])
		     ->mname($name[2]);
	} else {
		$self->fname($name[0])
		     ->mname($name[1])
		     ->lname($name[2]);
	}

}

sub mi {
	my $self = shift;
	$self->{mi} = substr($self->mname,0,1);
	$self->{mi};
}

########################################### main pod documentation begin ##

=head1 NAME

Parse::Name - 

=head1 SYNOPSIS

  use Parse::Name
  my $parser = Parse::Name->new("Robert Lewis Boone");

  print $parser->lname;


=head1 DESCRIPTION

This is a simple module for parsing string names into an object
with methods that represent the parts of name.

=head1 AUTHOR

	Robert Boone
	robert@rlb3.com
	http://www.rlb3.com

=head1 COPYRIGHT

This program is free software licensed under the...

	The General Public License (GPL)
	Version 2, June 1991

The full text of the license can be found in the
LICENSE file included with this module.

=cut

############################################# main pod documentation end ##


1; #this line is important and will help the module return a true value
__END__

