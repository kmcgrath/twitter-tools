#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'twittertools' ) || print "Bail out!\n";
}

diag( "Testing twittertools $twittertools::VERSION, Perl $], $^X" );
