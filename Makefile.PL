use strict;
use warnings;
use ExtUtils::MakeMaker::Dist::Zilla::Develop;

use ExtUtils::Depends 0.302;
my $pkg = ExtUtils::Depends->new(
    'signatures',
    'B::Hooks::OP::Check',
    'B::Hooks::OP::PPAddr',
    'B::Hooks::Parser',
);
$pkg->add_xs('signatures.xs');
$pkg->add_pm('lib/signatures.pm' => '$(INST_LIB)/signatures.pm');

WriteMakefile(
    NAME => 'signatures',
    $pkg->get_makefile_vars,
);
