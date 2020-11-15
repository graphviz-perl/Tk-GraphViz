use strict;
use warnings;

use Test::More;
use Tk::GraphViz;

my @DATA = (
  [
    '{<port1> echo\ $\{hallo\}\ perl\\lib\ double\\\\l \| wc -l\l|true\l}',
    [
      { 'port1' => 'echo\\ $\\{hallo\\}\\ perl\\lib\\ double\\\\l \\| wc -l\\l' },
      { '' => 'true\\l' }
    ],
  ],
);

plan tests => scalar @DATA;

for my $d (@DATA) {
  is_deeply_dump(Tk::GraphViz::_parse($d->[0]), $d->[1], $d->[0]);
}

sub is_deeply_dump {
  my ($got, $expected, $label) = @_;
  is_deeply $got, $expected, $label or diag explain $got;
}
