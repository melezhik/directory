# SYNOPSIS

Manages directories


# INSTALL


    $ sparrow plg install directory


# USAGE


    $ cat sparrowfile


    use v6;

    use Sparrowdo;


    task_run %(

      task => 'create this directory',
      plugin => 'directory',
      parameters => %(
        action => 'create',
        path => '/opts/perl'
        recursive => 1,
        mode => '755',
        owner => 'sparrow'
      )
    );


# Parameters

## action

One of two - `create|delete`. Default value is 'create'

## path

A directory path.

## recursive

Recursively creates a directory if parent directories not exist. Default value is 1.

## owner

Sets the owner of the directory created

## mode

Sets file permissions


# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)
