package List::UtilsBy::XS;
use 5.008_001;

use strict;
use warnings;

use XSLoader;

use base qw(Exporter);

our $VERSION = '0.01';

our @EXPORT_OK = qw(
    sort_by
    rev_sort_by
    nsort_by
    rev_nsort_by

    max_by
    min_by

    uniq_by

    partition_by
    count_by

    zip_by

    extract_by
);

XSLoader::load __PACKAGE__, $VERSION;

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

List::UtilsBy::XS -

=head1 SYNOPSIS

  use List::UtilsBy::XS;

=head1 DESCRIPTION

List::UtilsBy::XS is

=head1 AUTHOR

Syohei YOSHIDA E<lt>syohex@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2011- Syohei YOSHIDA

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
