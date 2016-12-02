#! /usr/bin/perl

use 5.20.0;

sub shorthand {
    lc join '' ,
        / # first letter and every first uppercase
           ^. | (?<![A-Z])[A-Z]
       /gx
}

sub tagme {
    return unless /[a-z]/;
    my $tag_info =
        join "\t"
        , qq($_) # filename
        , qq($_) # cmd
        #, q(f);  # kind
        ;

    map "$_\t$tag_info" , grep {length > 2} $_ , shorthand;
}

say for sort map tagme , map /\w+/g, <> 
