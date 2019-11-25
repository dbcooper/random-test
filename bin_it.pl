#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

use List::Util qw(max);

my %bins;
while (<>) {
    next if /^\s*$/ or /^\s*#/;
    chomp();
    die "?invalid input: $_" unless /^\d+$/;
    $bins{$_}++;
}

# CSV output to match py2random
my $max = max(keys %bins);
for (my $i = 0; $i <= $max; $i++) {
    my $v = $bins{$i} // 0;
    print "$i,$v\n";
}
