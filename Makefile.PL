use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME		=> 'Tk::GraphViz',
    VERSION_FROM	=> 'lib/Tk/GraphViz.pm',
    PREREQ_PM		=> {
        Tk => '800.020',
        Reaper => '1.00',
    },
    ABSTRACT => 'Tk widget (derived from Canvas) for displaying graphs in the GraphViz format.',
    AUTHOR => 'Jeremy Slade <jeremy@jkslade.net>',
);
