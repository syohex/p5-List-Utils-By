use strict;
use warnings;

use Test::More;

use List::UtilsBy::XS qw(max_by);

my $expected;
my $got;
my @gots;
my @array;

is_deeply( [ max_by {} ], [], 'empty list yields empty' );

$got = scalar (max_by { $_ } 10);
is($got, 10, 'unit list yields value in scalar context');
is_deeply( [ max_by { $_ } 10 ], [ 10 ], 'unit list yields unit list value' );

is_deeply( ( scalar max_by { $_ } 10, 20 ), 20, 'identity function on $_' );

$got = scalar(max_by { length $_ } "a", "ccc", "bb");
is($got, 'ccc', "length function in scalar context");

@gots = max_by { length $_ } "a", "ccc", "bb";
is_deeply(\@gots, [ 'ccc' ], "length function in list context");

$got = scalar(max_by { length $_ } "a", "ccc", "bb", "ddd");
is($got, 'ccc', "first max element");

@gots = max_by { length $_ } "a", "ccc", "bb", "ddd";
$expected = [ qw/ccc ddd/ ];
is_deeply(\@gots, $expected, 'ties yield all maximal in list context');

done_testing;
