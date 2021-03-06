use strict;
use warnings;
use inc::Module::Install 0.77;

name 'MooseX-Method-Signatures';
all_from 'lib/MooseX/Method/Signatures.pm';

requires 'aliased';
requires 'B::Hooks::EndOfScope' => '0.07';
requires 'Context::Preserve';
requires 'Parse::Method::Signatures' => '1.003011';
requires 'Devel::Declare' => '0.005011';
requires 'Moose::Util::TypeConstraints';
requires 'Moose' => '0.89';
requires 'MooseX::LazyRequire' => '0.03';
requires 'MooseX::Meta::TypeConstraint::ForceCoercion';
requires 'MooseX::Types' => '0.19';
requires 'MooseX::Types::Moose';
requires 'MooseX::Types::Structured' => '0.12';
requires 'namespace::autoclean';
requires 'Sub::Name';
requires 'Task::Weaken';
requires 'Text::Balanced';

test_requires 'Test::Exception';
test_requires 'Test::More' => 0.88;

repository 'git://github.com/rafl/moosex-method-signatures.git';
bugtracker 'http://rt.cpan.org/Public/Dist/Display.html?Name=MooseX-Method-Signatures';

extra_tests();

if ($Module::Install::AUTHOR) {
  system('pod2text lib/MooseX/Method/Signatures.pm > README');
}

WriteAll;
