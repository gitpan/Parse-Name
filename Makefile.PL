use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Parse::Name',
    VERSION_FROM => 'lib/Parse/Name.pm', # finds $VERSION
    AUTHOR       => 'Robert Boone (robert@rlb3.com)',
    ABSTRACT     => '',
    PREREQ_PM    => {
                     'Test::Simple'	        => 0.44,
		     'Class::Accessor::Chained' => '0'
                    },
);
