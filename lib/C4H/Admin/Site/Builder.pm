package C4H::Admin::Site::Builder;

use Moose;
extends 'OpusVL::WebsiteAdmin::Builder';

override _build_plugins => sub {
    my $plugins = super(); # Get what OpusVL::WebsiteAdmin::Builder gives you

    push @$plugins, qw/
        +Code4Health::AppKitX::UserAdmin
        +Code4Health::AppKitX::Organisations
        +Code4Health::AppKitX::CommunityAdmin
        +OpusVL::AppKitX::SysParams
    /;

    return $plugins;
};

override _build_config => sub 
{
    my $self   = shift;
    my $config = super(); # Get what OpusVL::WebsiteAdmin::Builder gives you

    return $config;
};

1;

=head1 NAME

C4H::Admin::Site::Builder

=head1 DESCRIPTION



=head1 METHODS

=head1 ATTRIBUTES


=head1 LICENSE AND COPYRIGHT

Copyright 2015 OpusVL.

This software is licensed according to the "IP Assignment Schedule" provided with the development project.

=cut
