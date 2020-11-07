use Test::More tests => 7;
BEGIN { use_ok('Tk::GraphViz') };

# Creates a Tk::GraphViz, without displaying anything.
# -- still requires connection to display, unfortunately
# The test is simply to lay-out a simple dot file (test1.dot)

use Tk;
use File::Basename;

my $mw = new MainWindow();

my $gv = $mw->GraphViz();
ok ( $gv );

# Render the graph from the file
ok ( eval { $gv->show ( dirname(__FILE__).'/test1.dot' ) } );
is $@, '', 'no error in ->show';

# Check the number of nodes, edges, subgraphs
my @nodes = $gv->find ( withtag => 'node' );
is scalar @nodes, 15, 'number nodes' or diag explain \@nodes;

my @edges = $gv->find ( withtag => 'edge' );
is scalar @edges, 15, 'number edges' or diag explain \@edges;

my @subgraphs = $gv->find ( withtag => 'subgraph' );
is scalar @subgraphs, 0, 'number subgraphs' or diag explain \@subgraphs;
