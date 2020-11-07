use 5.006;
use ExtUtils::MakeMaker;

my $repo = 'graphviz-perl/Tk-GraphViz';
WriteMakefile(
  NAME => 'Tk::GraphViz',
  VERSION_FROM => 'lib/Tk/GraphViz.pm',
  PREREQ_PM => {
    Tk => '800.020',
    Reaper => '1.00',
  },
  ABSTRACT => 'Tk widget (derived from Canvas) for displaying graphs in the GraphViz format.',
  AUTHOR => 'Jeremy Slade <jeremy@jkslade.net>',
  META_MERGE => {
    "meta-spec" => { version => 2 },
    dynamic_config => 0,
    resources => {
      x_IRC => 'irc://irc.perl.org/#graphql-perl',
      repository => {
        type => 'git',
        url => "git\@github.com:$repo.git",
        web => "https://github.com/$repo",
      },
      bugtracker  => {
        web => "https://github.com/$repo/issues",
      },
      license => [ 'http://dev.perl.org/licenses/' ],
    },
    prereqs => {
      develop => {
        requires => {
          'Test::Pod::Coverage' => '1.08',
          'Test::Pod' => '1.22',
        },
      },
    },
  },
);
