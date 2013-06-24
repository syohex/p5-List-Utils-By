requires 'XSLoader', '0.02';
requires 'parent';
requires 'perl', '5.008001';

on build => sub {
    requires 'Devel::PPPort', '3.2';
    requires 'ExtUtils::MakeMaker', '6.59';
    requires 'ExtUtils::ParseXS', '2.21';
    requires 'Test::More', '0.88';
};
