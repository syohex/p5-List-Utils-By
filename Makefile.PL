use inc::Module::Install;
use Module::Install::AuthorTests;
use Module::Install::XSUtil;

name 'List-UtilsBy-XS';
all_from 'lib/List/UtilsBy/XS.pm';

test_requires 'Test::More' => '0.88';

cc_warnings;
cc_src_paths 'xs-src';

author_tests('xt');
WriteAll;
