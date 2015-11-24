use strict;
use warnings;

use C4H::Admin::Site;

my $app = C4H::Admin::Site->apply_default_middlewares(C4H::Admin::Site->psgi_app);
$app;

