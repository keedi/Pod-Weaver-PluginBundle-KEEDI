# NAME

Pod::Weaver::PluginBundle::KEEDI - document your modules like KEEDI does

# VERSION

version 0.004

# SYNOPSIS

In weaver.ini:

    [@KEEDI]

or in dist.ini:

    [PodWeaver]
    config_plugin = @KEEDI

# DESCRIPTION

This is the [Pod::Weaver](https://metacpan.org/pod/Pod::Weaver) config I use for building my documentation.

# OVERVIEW

This plugin bundle is equivalent to the following `weaver.ini` file:

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

    [-Transformer]
    transformer = List

    [-Encoding]
    encoding = utf-8

# SEE ALSO

- [Dist::Zilla](https://metacpan.org/pod/Dist::Zilla)
- [Pod::Weaver](https://metacpan.org/pod/Pod::Weaver)
- [Pod::Weaver::PluginBundle::Default](https://metacpan.org/pod/Pod::Weaver::PluginBundle::Default)
- [Pod::Elemental::Transformer::List](https://metacpan.org/pod/Pod::Elemental::Transformer::List)

# AUTHOR

Keedi Kim - 김도형 <keedi@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Keedi Kim.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
