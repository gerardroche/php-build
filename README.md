php-build -- Builds multiple versions of PHP.
=============================================

## Install

Either download a [Release Tarball][releases] or clone the Git Repository:

    % git clone git://github.com/CHH/php-build

Then go into the extracted/cloned directory and run:

    % ./install.sh

This installs php-build to default prefix which is `/usr/local`. 

To install php-build to an other location than `/usr/local` set the
`PREFIX` environment variable:

    % PREFIX=$HOME/local ./install.sh

If you don't have permissions to write to the prefix, then you 
have to run `install.sh` as superuser, either via `su -c` or via `sudo`.

[releases]: https://github.com/CHH/php-build/tags

## Changelog

### v0.4.0

 * XDebug was updated to 2.1.3 in all `5.2.x` and `5.3.x` definitions.
 * PEAR and Pyrus can be installed along each other. This is
   experimental though.
 * Added `php-build.5` about the definition file format.
 * A particular revision can be passed to `install_xdebug_master`
   (loicfrering).
 * Added definition for 5.4.0 final (loicfrering).