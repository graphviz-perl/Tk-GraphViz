use 5.005;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Tk::GraphViz',
    'VERSION_FROM'	=> 'GraphViz.pm', # finds $VERSION
    'PREREQ_PM'		=> { Tk => 800.011 },
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT => 'Tk widget (derived from Canvas) for displaying graphs in the GraphViz format.',
       AUTHOR => 'Jeremy Slade <jeremy@jkslade.net>') : ()),
);
