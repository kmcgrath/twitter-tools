use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'twitter-tools',
    license             => 'perl',
    dist_author         => q{Kevin McGrath <kevin@baknet.com>},
    dist_version        => '0.01',
    build_requires => {
        'Test::More' => 0,
        'Log::Handler'  => 0,
        'Net::Twitter'  => 0,
        'Config::Any'   => 0,
        'Any::Renderer' => 0,
        'Getopt::Lucid' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'twitter-tools-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
