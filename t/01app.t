#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Catalyst::Test 'C4H::Admin::Site';

ok( request('/')->is_success, 'Request should succeed' );

done_testing();
