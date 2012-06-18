package Pod::Weaver::PluginBundle::KEEDI;
# ABSTRACT: document your modules like KEEDI does 

use strict;
use warnings;

use namespace::autoclean;

use Pod::Weaver::Config::Assembler;
sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_multivalue_args { qw( contributors ) }

sub mvp_bundle_config {
    return (
        [ '@KEEDI/CorePrep',     _exp('@CorePrep'),    {} ],
        [ '@KEEDI/Name',         _exp('Name'),         {} ],
        [ '@KEEDI/Version',      _exp('Version'),      {} ],

        [ '@KEEDI/prelude',      _exp('Region'),       { region_name => 'prelude'  } ],
        [ 'SYNOPSIS',            _exp('Generic'),      {} ],
        [ 'DESCRIPTION',         _exp('Generic'),      {} ],
        [ 'OVERVIEW',            _exp('Generic'),      {} ],

        [ 'ATTRIBUTES',          _exp('Collect'),      { command => 'attr'   } ],
        [ 'METHODS',             _exp('Collect'),      { command => 'method' } ],
        [ 'FUNCTIONS',           _exp('Collect'),      { command => 'func'   } ],

        [ '@KEEDI/Leftovers',    _exp('Leftovers'),    {} ],

        [ '@KEEDI/postlude',     _exp('Region'),       { region_name => 'postlude' } ],

        [ '@KEEDI/Authors',      _exp('Authors'),      {} ],
        [ '@KEEDI/Contributors', _exp('Contributors'), {} ],
        [ '@KEEDI/ACK',          _exp('Generic'),      { header => 'ACKNOWLEDGEMENTS' } ],
        [ '@KEEDI/Legal',        _exp('Legal'),        {} ],

        [ '-Encoding',           _exp('-Encoding'),    { encoding => 'utf-8' } ],
    )
}

1;

__END__
=pod

=head1 SYNOPSIS

In weaver.ini:

    [@KEEDI]

or in dist.ini:

    [PodWeaver]
    config_plugin = @KEEDI


=head1 DESCRIPTION

This is the L<Pod::Weaver> config I use for building my documentation.


=head1 OVERVIEW

This plugin bundle is equivalent to the following weaver.ini file:

  [@CorePrep]

  [Name]
  [Version]

  [Region  / prelude]

  [Generic / SYNOPSIS]
  [Generic / DESCRIPTION]
  [Generic / OVERVIEW]

  [Collect / ATTRIBUTES]
  command = attr

  [Collect / METHODS]
  command = method

  [Leftovers]

  [Region  / postlude]

  [Authors]
  [Contributors]
  [Generic / ACKNOWLEDGEMENTS]
  [Legal]

  [-Encoding]
  encoding = utf-8


=head1 SEE ALSO

=over

=item L<Dist::Zilla>

=item L<Pod::Weaver>

=item L<Pod::Weaver::PluginBundle::Default>

=back

=cut