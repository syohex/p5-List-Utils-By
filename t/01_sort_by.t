use strict;
use warnings;

use Test::More;

use List::UtilsBy::XS qw( sort_by rev_sort_by );

is_deeply( [ sort_by { } ], [], 'empty list' );

is_deeply( [ sort_by { $_ } "a" ], [ "a" ], 'unit list' );

is_deeply( [ sort_by { $_ } "a", "b" ], [ "a", "b" ], 'identity function no-op' );
is_deeply( [ sort_by { $_ } "b", "a" ], [ "a", "b" ], 'identity function on $_' );

# list reverse on a single element is a no-op; scalar reverse will swap the
# characters. This test also ensures the correct context is seen by the function
is_deeply( [ sort_by { reverse $_ } "az", "by" ], [ "by", "az" ], 'reverse function' );

is_deeply( [ rev_sort_by { $_ } "b", "a" ], [ "b", "a" ], 'reverse sort identity function on $_' );

done_testing;
