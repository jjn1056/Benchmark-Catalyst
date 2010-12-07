#!/usr/bin/env perl

use strict;
use warnings;

use Benchmark qw(:all);
use Catalyst::Test 'Benchmark::Catalyst::Web';

timethis
(
  100,
  sub {
    request('/');
  },
);


