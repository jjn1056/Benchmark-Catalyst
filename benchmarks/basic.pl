#!/usr/bin/env perl

use strict;
use warnings;

use Benchmark qw(:all);
use Catalyst::Test 'Benchmark::Catalyst::Web';

timethis
(
  5000,
  sub {
    request('/');
  },
);

__END__

perl -I ~/Desktop/Catalyst/5.80/branches/psgi/lib/ -I lib benchmarks/basic.pl
