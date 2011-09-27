use strict;
use warnings;

use Test::More;
use List::UtilsBy::XS qw( uniq_by );

is_deeply( [ uniq_by { } ], [], 'empty list' );

is_deeply( [ uniq_by { $_ } "a" ], [ "a" ], 'unit list' );

is_deeply( [ uniq_by { $_ } "a", "b" ], [ "a", "b" ], 'identity function no-op' );
is_deeply( [ uniq_by { $_ } "b", "a" ], [ "b", "a" ], 'identity function on $_' );

is_deeply( [ uniq_by { length $_ } "a", "b", "cc", "dd", "eee" ], [ "a", "cc", "eee" ], 'length function' );

done_testing;
