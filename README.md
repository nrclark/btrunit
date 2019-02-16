## Introduction ##

BTRunit is a lightweight service manager for use on Linux and other UNIX-like
operating systems.

## History ##

Runit was originally written by Gerrit Pape at smarden.org, based on DJB's
original daemontools service supervisor. This repo continues where Gerrit
left off.

## Improvements ##

1. All code is formatted for safety and clarity.
2. Legacy K&R C is converted to ANSI C.
3. All type warnings and signed/unsigned warnings are fixed.
4. The build system is migrated to GNU Autotools. Yes, this is
   an improvement. Just ask your local distro packager.
5. Cross-compilation works. Legacy RUnit's build system used a lot
   of runtime checks during the build process, which prevented any
   kind of cross-compilation.

## Installation ##

If you're installing from a release tarball, just `./configure`, `make`,
and `make install`. If you're installing from a repo checkout, run
`autogen.sh` first.

## Requirements ##

To build BTRunit from a release tarball, you'll need:

1. Make
2. A C compiler
3. Libc
4. That's pretty much it

To build from the repo, you'll also need m4, automake, and autoconf.
