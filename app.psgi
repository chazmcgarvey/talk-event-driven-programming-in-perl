#!/usr/bin/env perl

use Plack::App::Directory;
use Plack::App::File;
use Plack::Builder;
use Plack::Util;

builder {
    mount '/css'            => Plack::App::Directory->new(root => 'css')->to_app;
    mount '/img'            => Plack::App::Directory->new(root => 'img')->to_app;
    mount '/js'             => Plack::App::Directory->new(root => 'js')->to_app;
    mount '/remark.min.js'  => Plack::App::File->new(file => 'remark.min.js')->to_app;
    mount '/'               => Plack::App::File->new(file => 'slides-offline.html')->to_app;
};

