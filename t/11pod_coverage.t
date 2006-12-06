# $Id: 11pod_coverage.t 827 2006-11-30 00:58:59Z nicolaw $

use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD Coverage" if 1 || $@;
all_pod_coverage_ok({
		also_private => [ qr/^[A-Z_]+$/ ],
		trustme => [ qw(handler status) ]
	}); #Ignore all caps

1;

