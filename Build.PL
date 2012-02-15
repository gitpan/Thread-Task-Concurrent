use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Thread::Task::Concurrent',
    license           => 'perl',
    dist_author       => q{Joachim Bargsten <cpan at bargsten dot org>},
    dist_version_from => 'lib/Thread/Task/Concurrent.pm',
    build_requires    => {
        'threads'         => 0,
        'threads::shared' => 0,
        'Test::More'      => 0,
        'Mouse'           => 0,
        'Mouse::Exporter' => 0,
        'Thread::Queue'   => 0,
    },
    add_to_cleanup     => ['Thread-Task-*'],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
