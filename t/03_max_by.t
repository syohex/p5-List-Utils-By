use strict;
use warnings;

use Test::More;

use List::UtilsBy::XS qw(max_by);

is_deeply( [ max_by {} ], [], 'empty list yields empty' );

is_deeply( ( scalar max_by { $_ } 10 ), 10, 'unit list yields value in scalar context' );
is_deeply( [ max_by { $_ } 10 ], [ 10 ], 'unit list yields unit list value' );

is_deeply( ( scalar max_by { $_ } 10, 20 ), 20, 'identity function on $_' );

is_deeply( ( scalar max_by { length $_ } "a", "ccc", "bb" ), "ccc", 'length function' );

is_deeply( ( scalar max_by { length $_ } "a", "ccc", "bb", "ddd" ), "ccc", 'ties yield first in scalar context' );
is_deeply( [ max_by { length $_ } "a", "ccc", "bb", "ddd" ], [ "ccc", "ddd" ], 'ties yield all maximal in list context' );

done_testing;
