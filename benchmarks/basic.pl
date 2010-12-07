#!/usr/bin/env perl

use strict;
use warnings;

use Benchmark qw(:all);
use Catalyst::Test;
use Benchmark::Catalyst::Web;

timethis (100, sub { request('/') });
