use inc::Module::Install;
use Module::Install::AuthorTests;
use Module::Install::XSUtil;

name 'List-UtilsBy-XS';
all_from 'lib/List/UtilsBy/XS.pm';

test_requires 'Test::More' => '0.88';

cc_define q{-DPERL_EXT};
cc_warnings;
use_ppport 3.20;
cc_src_paths 'xs-src';

author_tests('xt');
WriteAll;
