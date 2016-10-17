#!/usr/bin/env perl
# IMPORTANT: if you delete this file your app will not work as
# expected.  You have been warned.
use inc::Module::Install;
use Module::Install::Catalyst; # Complain loudly if you don't have
                               # Catalyst::Devel installed or haven't said
                               # 'make dist' to create a standalone tarball.

name 'C4H-Admin-Site';
all_from 'lib/C4H/Admin/Site.pm';

requires 'OpusVL::WebsiteAdmin' => "0.09";
requires 'Code4Health::AppKitX::Users' => "0.04";
requires 'Code4Health::AppKitX::UserAdmin' => "0.02";
requires 'Code4Health::AppKitX::Organisations' => "0.03";
requires 'Code4Health::AppKitX::CommunityAdmin' => "0.01";

requires 'OpusVL::AppKitX::CMS';
requires 'OpusVL::AppKitX::CMSView' => 0.74;
requires 'OpusVL::AppKitX::SysParams';

catalyst;

install_script glob('bin/*.pl');
auto_install;
resources (
    repository => {
        url => 'ssh://git/srv/git/C4H-User-Site',
        type => 'git',
    },
);

WriteAll;
