#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;
use 5.010;

use Catalyst::Test 'C4H::Admin::Site';

my $res = request('/login');
ok( $res->is_success, 'Request should succeed' );

done_testing();
