
use PDL::Core::Dev;
use ExtUtils::MakeMaker;

my $package = ["pdl_vector_real.pd", "Real", "PDL::Vector::Real"];

WriteMakefile( PREREQ_PM => {},
               ABSTRACT  => "Manipulate vectors of real numbers using PDL",
               AUTHOR    => 'Salvador Fandiño <sfandino@yahoo.com>',
               LICENSE   => 'perl',
               pdlpp_stdargs($package),
);

sub MY::postamble { pdlpp_postamble($package) }
