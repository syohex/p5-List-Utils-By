use inc::Module::Install;
use Module::Install::AuthorTests;

name 'List-UtilsBy-XS';
all_from 'lib/List/UtilsBy/XS.pm';

author_tests('xt');
WriteAll;
