This is the tup template for papers:
http://gittup.org/tup/

Installation
============

You'll need to have svn, gnuplot and pdflatex installed on your machine.
You'll also need to install tup (a make replacement).

To install these for Mac OS:
- Download and install MacTex: http://www.tug.org/mactex/2011/
- Download and install MacPorts: http://www.macports.org/
- Install the following packages
-- sudo port install gnuplot ImageMagick librsvg tup

To install for linux:
- Download and install Latex. We recommend the texlive-full package.
- Download and install tup. There are instructions for each distro
  on the [tup homepage](http://gittup.org/tup/).

Overview
========

Tup is a build system that keeps a database of all of the input files,
output files, commands to build them, and system state, as well as a directed
graph of input files to output files. Whenever any of this changes, tup
knows exactly what is out of date and must be rebuilt. By being strict
about knowing exactly what files, built output, and system variables
are required in any step of the build process, tup can ensure that
everything is up to date. In contrast, make allows much more free form rules
and does not require the developer to specify all dependencies. This can 
result in an out of date build even after running `make`.


Usage
=====

To build the paper, simply run the command `tup` anywhere in the tree.

We use what tup calls variants to build a pdf and (optionally) ps version of
the papers.  Variants allow tup to put all built output into a separate
directory. To setup these variants if they are not already created run:

    tup variant configs/pdf.config

Notes
=====

The paper directory structure is as follows:

-  tex   - Contains the paper text and bibliography.
-  figs  - Contains figures. Recommended layout is to create
           a separate subdirectory for each experiment, and 
           put both the data, gnuplot files (*.plt), and any
           processing utilities. You need to put a Tupfile in
           each subdirectory to build. Copying the sample
           tupfile is usually sufficient.
- images - Any fixed, static images. Place image files of any
           type in this folder and the build system will
           automatically convert them to the necessary formats.

