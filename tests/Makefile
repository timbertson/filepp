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
#  Project      :  File Pre Processor - testsuite
#  Filename     :  $RCSfile: Makefile.in,v $
#  Originator   :  $Author: darren $
#  Maintainer   :  Darren Miller: darren@cabaret.demon.co.uk
#  File version :  $Revision: 1.3 $
#  Last changed :  $Date: 2003/07/14 10:03:20 $
#  Description  :  Makefile for bigdef module
#  Licence      :  GNU copyleft
#
########################################################################

##############################################################################
# Paths
##############################################################################
srcdir = .
# top level of test build directory
TESTBUILD = ../testbuild
TESTFILEPP = $(TESTBUILD)/bin/filepp
ECHO=echo
DIFF=diff
RM=rm -fr

.PHONY: test
test:
	@$(ECHO) ----------- Testing macro prefixes --------
	$(TESTFILEPP) -mp \' $(srcdir)/test-mp -o test-mp.out
	$(DIFF) $(srcdir)/test-mp.good test-mp.out
	$(TESTFILEPP) -mp \' $(srcdir)/test-mp -mpnk -o test-mpnk.out
	$(DIFF) $(srcdir)/test-mpnk.good test-mpnk.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing macros with variable args --
	$(TESTFILEPP) $(srcdir)/test-varargs -o test-varargs.out
	$(DIFF) $(srcdir)/test-varargs.good test-varargs.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing if --------------------
	$(TESTFILEPP) $(srcdir)/test-if -o test-if.out
	$(DIFF) $(srcdir)/test-if.good test-if.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing ifwords ---------------
	$(TESTFILEPP) -m $(srcdir)/ifwords.pm $(srcdir)/test-ifwords -o test-ifwords.out
	$(DIFF) $(srcdir)/test-ifwords.good test-ifwords.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing recursive macros ------
	@$(ECHO) - Should give warning about recursive macros -
	$(TESTFILEPP) $(srcdir)/test-loop -o test-loop.out
	$(DIFF) $(srcdir)/test-loop.good test-loop.out
	$(TESTFILEPP) -w $(srcdir)/test-loop -o test-loopwb.out
	$(DIFF) $(srcdir)/test-loopwb.good test-loopwb.out
	$(TESTFILEPP) $(srcdir)/test-loop2 -o test-loop2.out
	$(DIFF) $(srcdir)/test-loop2.good test-loop2.out
	$(TESTFILEPP) -w $(srcdir)/test-loop2 -o test-loop2wb.out
	$(DIFF) $(srcdir)/test-loop2wb.good test-loop2wb.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing non-ascii chars -------
	$(TESTFILEPP) $(srcdir)/test-pound -o test-pound.out
	$(DIFF) $(srcdir)/test-pound.good test-pound.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing blank line suppression --
	$(TESTFILEPP) $(srcdir)/test-suppress -o test-suppress.out
	$(DIFF) $(srcdir)/test-suppress.good test-suppress.out
	@$(ECHO) ----------- Done --------------------------
	@$(ECHO) ----------- Testing SetEatTrail -----------
	$(TESTFILEPP) $(srcdir)/test-trail -o test-trail.out
	$(DIFF) $(srcdir)/test-trail.good test-trail.out
	@$(ECHO) ----------- Done --------------------------

clean:
	$(RM) *.out *~

distclean: clean
	$(RM) Makefile

##############################################################################
# End of file
##############################################################################
