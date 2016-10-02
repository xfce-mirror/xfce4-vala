NULL = 

if MAINTAINER_MODE
update-gi:
	$(VALAGI) $(LIBXFCE4UTIL) packages/$(LIBXFCE4UTIL)
	$(VALAGI) $(LIBXFCE4UI1) packages/$(LIBXFCE4UI1)
	$(VALAGI) $(LIBXFCE4UI2) packages/$(LIBXFCE4UI2)
	$(VALAGI) $(LIBXFCE4PANEL1) packages/$(LIBXFCE4PANEL1)
	$(VALAGI) $(LIBXFCE4PANEL2) packages/$(LIBXFCE4PANEL2)
	$(VALAGI) $(EXO1) packages/$(EXO1)
	$(VALAGI) $(EXO2) packages/$(EXO2)
	$(VALAGI) $(XFCONF) packages/$(XFCONF)
	$(VALAGI) $(GARCON1) packages/$(GARCON1)
#	$(VALAGI) $(GARCON2) packages/$(GARCON2)
#	$(VALAGI) $(GARCONGTK21) packages/$(GARCONGTK21)
#	$(VALAGI) $(GARCONGTK31) packages/$(GARCONGTK31)

update-vapi:
	(cd vapi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UTIL)\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL).gi\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UI1)\
		../packages/$(LIBXFCE4UI1)/$(LIBXFCE4UI1).gi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UI2)\
		../packages/$(LIBXFCE4UI2)/$(LIBXFCE4UI2).gi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4PANEL1)\
		../packages/$(LIBXFCE4PANEL1)/$(LIBXFCE4PANEL1).gi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4PANEL2)\
		../packages/$(LIBXFCE4PANEL2)/$(LIBXFCE4PANEL2).gi;\
	$(VAPIGEN) --vapidir=. --library $(EXO1)\
		../packages/$(EXO1)/$(EXO1).gi\
		../packages/$(EXO1)/$(EXO1)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(EXO2)\
		../packages/$(EXO2)/$(EXO2).gi\
		../packages/$(EXO2)/$(EXO2)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(XFCONF)\
		../packages/$(XFCONF)/$(XFCONF).gi\
		../packages/$(XFCONF)/$(XFCONF)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(GARCON1)\
		../packages/$(GARCON1)/$(GARCON1).gi;\
	)
#	$(VAPIGEN) --vapidir=. --library $(GARCON2)\
#		../packages/$(GARCON2)/$(GARCON2).gi;\
#	$(VAPIGEN) --vapidir=. --library $(GARCONGTK1)\
#		../packages/$(GARCONGTK1)/$(GARCONGTK1).gi;\
#	$(VAPIGEN) --vapidir=. --library $(GARCONGTK2)\
#		../packages/$(GARCONGTK2)/$(GARCONGTK2).gi;\
#	)
	for i in packages/*/*.deps; do cp $$i vapi; done
endif

tests: tests.stamp
tests.stamp:
	(cd tests;\
	$(VALAC) --pkg=posix --pkg=$(LIBXFCE4UTIL) --vapidir=../vapi $(LIBXFCE4UTIL).vala;\
	$(VALAC) --pkg=gtk+-2.0 --pkg=$(GARCON1) --vapidir=../vapi $(GARCON1).vala;\
	$(VALAC) --pkg=$(XFCONF) --vapidir=../vapi $(XFCONF).vala;\
	$(VALAC) --pkg=$(EXO1) --vapidir=../vapi $(EXO1).vala;\
	)
	touch $@

vapi_DATA =								\
	vapi/$(LIBXFCE4UTIL).vapi					\
	vapi/$(LIBXFCE4UI1).vapi					\
	vapi/$(LIBXFCE4UI1).deps					\
	vapi/$(LIBXFCE4UI2).vapi					\
	vapi/$(LIBXFCE4UI2).deps					\
	vapi/$(LIBXFCE4PANEL1).vapi					\
	vapi/$(LIBXFCE4PANEL1).deps					\
	vapi/$(LIBXFCE4PANEL2).vapi					\
	vapi/$(LIBXFCE4PANEL2).deps					\
	vapi/$(EXO1).vapi						\
	vapi/$(EXO1).deps						\
	vapi/$(EXO2).vapi						\
	vapi/$(EXO2).deps						\
	vapi/$(XFCONF).vapi						\
	vapi/$(GARCON1).vapi						\
	vapi/$(GARCON1).deps						\
	$(NULL)

pkgconfigdir = $(datadir)/pkgconfig
pkgconfig_DATA = xfce4-vala.pc

EXTRA_DIST =								\
	AUTHORS								\
	ChangeLog							\
	COPYING								\
	INSTALL								\
	NEWS								\
	README								\
	examples							\
	packages							\
	vapi								\
	tests/$(LIBXFCE4UTIL).vala					\
	tests/$(XFCONF).vala						\
	tests/$(EXO1).vala						\
	$(NULL)

CLEANFILES =								\
	tests.stamp							\
	tests/$(LIBXFCE4UTIL)						\
	tests/rcfile.rc							\
	tests/$(XFCONF)							\
	tests/$(EXO1)							\
	$(NULL)

distclean-local:
	-rm -rf autom4te.cache

MAINTAINERCLEANFILES =							\
	INSTALL								\
	aclocal.m4							\
	configure							\
	configure.ac							\
	depcomp								\
	install-sh							\
	Makefile.in							\
	missing								\
	$(NULL)

# vi:set ts=8 sw=8 noet ai nocindent syntax=automake:
