########################################################################
#
# filepp is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
########################################################################
########################################################################
#
#  Project      :  File Pre Processor - c-comment.pm and hash-comment.pm module
#  Filename     :  $RCSfile: Makefile.in,v $
#  Originator   :  $Author: darren $
#  Maintainer   :  Darren Miller: darren@cabaret.demon.co.uk
#  File version :  $Revision: 1.4 $
#  Last changed :  $Date: 2007/02/13 00:08:08 $
#  Description  :  Makefile for c-comment.pm module
#  Licence      :  GNU copyleft
#
########################################################################

##############################################################################
# Paths
##############################################################################
srcdir = .
datarootdir = ${prefix}/share
moduledir = /usr/local/share/filepp/modules
# top level of test build directory
TESTBUILD = ../../testbuild
TESTFILEPP = $(TESTBUILD)/bin/filepp
ECHO=echo
DIFF=diff
RM=rm -fr
INSTALL=/usr/bin/install -c

test:
	@$(ECHO) ----------- Testing c-comment.pm ----------
	$(TESTFILEPP) -m c-comment.pm $(srcdir)/test.in -o test-c.out
	$(DIFF) $(srcdir)/test-c.good test-c.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing hash-comment.pm -------
	$(TESTFILEPP) -m hash-comment.pm $(srcdir)/test.in -o test-hash.out
	$(DIFF) $(srcdir)/test-hash.good test-hash.out
	@$(ECHO) ----------- Done --------------------------

install:
	$(INSTALL) -m 644 $(srcdir)/comment.pm $(moduledir)
	$(INSTALL) -m 644 $(srcdir)/c-comment.pm $(moduledir)
	$(INSTALL) -m 644 $(srcdir)/hash-comment.pm $(moduledir)

clean:
	$(RM) test-c.out test-hash.out

distclean:
	$(RM) Makefile

##############################################################################
# End of file
##############################################################################
