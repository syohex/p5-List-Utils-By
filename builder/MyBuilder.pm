package builder::MyBuilder;
use strict;
use warnings;
use 5.008001;
use base 'Module::Build::XSUtil';

sub new {
    my ( $class, %args ) = @_;
    my $self = $class->SUPER::new(
        %args,
        generate_ppport_h     => 'path/to/ppport.h',
        generate_xs_helper_h => 'lib/Your/XS/xshelper.h',
        needs_compiler_c99   => 1,
    );
    return $self;
}

1;

