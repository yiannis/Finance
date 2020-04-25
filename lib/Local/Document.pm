package Local::Document;

use Moose;
use File::Basename;

has text => (
    is        => 'ro',
    isa       => 'Str',
    init_arg  => undef,
    lazy      => 1,
    builder   => '_build_text',
);

has title => (
    is        => 'ro',
    isa       => 'Str',
    init_arg  => undef,
    lazy      => 1,
    builder   => '_build_title',
);

has file_path => (
    is        => 'ro',
    isa       => 'Str',
    required  => 1,
);

has file_name => (
    is        => 'ro',
    isa       => 'Str',
    init_arg  => undef,
    lazy      => 1,
    builder   => '_build_file_name',
);


sub _build_file_name
{
    my $self = shift;

    basename( $self->file_path );
}


1;
