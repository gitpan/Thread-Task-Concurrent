#!perl -T

use Test::More tests => 2;

BEGIN {
    use Config;
    plan skip_all => "Perl not compiled with 'useithreads'\n"
        if ( !$Config{'useithreads'} );

    use_ok('Thread::Task::Concurrent::Util') || print "Bail out!";
    use_ok('Thread::Task::Concurrent')       || print "Bail out!";
}

diag("Testing Thread::Task::Concurrent::Util $Thread::Task::Concurrent::Util::VERSION, Perl $], $^X");
diag("Testing Thread::Task::Concurrent $Thread::Task::Concurrent::VERSION, Perl $], $^X");
