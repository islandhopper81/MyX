use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'MyX::Generic',
    license             => 'perl',
    dist_author         => 'Scott Yourstone <scott.yourstone81@gmail.com>',
    dist_version_from   => 'lib/MyX/Generic.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
	build_requires => {
		'Exception::Class' => 0,
		'File::Basename' => 0,
		'File::Spec' => 0,
	},
	test_requires => {
		'File::Temp' => 0,
		'Test::More' => 0,
		'Test::Exception' => 0,
		'Test::Pod::Coverage' => 1.04,
		'Test::Pod' => 1.14
	},
    add_to_cleanup      => [ 'MyX-*' ],
    recursive_test_files => 1,
);

$builder->create_build_script();
