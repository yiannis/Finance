package TestsFor::Local::Document;

use Test::Class::Moose;

use Local::Document;

sub test_1_construction
{
    my $test = shift;
         
    my $d = Local::Document->new(
        file_path => '/some/nested/file/path/name.pdf',
    );
    isa_ok( $d, 'Local::Document' );
}

sub test_2_file_name
{
    my $test = shift;
         
    my $d = Local::Document->new(
        file_path => '/some/nested/file/path/name.pdf',
    );

    is( $d->file_name, 'name.pdf' );
}


# API
# from_file
# text
# title
            
1;
