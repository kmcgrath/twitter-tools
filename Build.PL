use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'twitter-tools',
    license             => 'perl',
    dist_author         => q{Kevin McGrath <kevin@baknet.com>},
    dist_version        => '0.03',
    dist_abstract       => 'Command line tools for Net::Twitter',
    build_requires => {
        'Test::More'                => 0,
        'Net::Twitter'              => 0,
        'Config::Any'               => 0,
        'AE'                        => 0,
        'CHI'                       => 0,
        'FindBin'                   => 0,
        'Log::Handler'              => 0,
        'Daemon::Generic'           => 0,
        'AnyEvent::Twitter::Stream' => 0,
        'Data::Printer'             => 0,
        'Any::Renderer'    => '1.015_01',
    },
    requires => {
        'perl' => 5.008,
    },
    add_to_cleanup      => [ 'twitter-tools-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
