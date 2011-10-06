#!perl
use strict;
use warnings;
use Test::More;
use Test::LeakTrace;

use List::UtilsBy::XS qw(:all);

no_leaks_ok {
    my @a = sort_by { $_ } 1 .. 10;
} 'sort_by';

no_leaks_ok {
    my @a = sort_by { $_ } 1 .. 10;
} 'nsort_by';

no_leaks_ok {
    my @a = max_by { $_ } 1 .. 10;
} 'max_by';

done_testing;

