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

$ perl -I ~/Desktop/Catalyst/5.80/branches/psgi/lib/ -I lib benchmarks/basic.pl 
timethis 5000:  9 wallclock secs ( 9.39 usr +  0.01 sys =  9.40 CPU) @ 531.91/s (n=5000)

$ perl -I lib benchmarks/basic.pl
timethis 5000: 14 wallclock secs (11.86 usr +  1.58 sys = 13.44 CPU) @ 372.02/s (n=5000)

$ cpanm Catalyst
Catalyst is up to date. (5.80029)


