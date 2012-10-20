NULL = 

if MAINTAINER_MODE
update-gi:
	$(VALAGI) $(LIBXFCE4UTIL) packages/$(LIBXFCE4UTIL)
	$(VALAGI) $(XFCONF) packages/$(XFCONF)
	$(VALAGI) $(LIBXFCE4UI) packages/$(LIBXFCE4UI)
	$(VALAGI) $(LIBXFCE4PANEL) packages/$(LIBXFCE4PANEL)
	$(VALAGI) $(EXO) packages/$(EXO)

update-vapi:
	(cd vapi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UTIL)\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL).gi\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(XFCONF)\
		../packages/$(XFCONF)/$(XFCONF).gi\
		../packages/$(XFCONF)/$(XFCONF)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UI)\
		../packages/$(LIBXFCE4UI)/$(LIBXFCE4UI).gi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4PANEL)\
		../packages/$(LIBXFCE4PANEL)/$(LIBXFCE4PANEL).gi\
		../packages/$(LIBXFCE4PANEL)/$(LIBXFCE4PANEL)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(EXO)\
		../packages/$(EXO)/$(EXO).gi\
		../packages/$(EXO)/$(EXO)-custom.vala;\
	)
	for i in packages/*/*.deps; do cp $$i vapi; done
endif

tests: tests.stamp
tests.stamp:
	(cd tests;\
	$(VALAC) --pkg=posix --pkg=$(LIBXFCE4UTIL) --vapidir=../vapi $(LIBXFCE4UTIL).vala;\
	$(VALAC) --pkg=$(XFCONF) --vapidir=../vapi $(XFCONF).vala;\
	$(VALAC) --pkg=$(EXO) --vapidir=../vapi $(EXO).vala;\
	)
	touch $@

vapi_DATA =								\
	vapi/$(LIBXFCE4UTIL).vapi					\
	vapi/$(XFCONF).vapi						\
	vapi/$(LIBXFCE4UI).vapi						\
	vapi/$(LIBXFCE4UI).deps						\
	vapi/$(LIBXFCE4PANEL).vapi					\
	vapi/$(LIBXFCE4PANEL).deps					\
	vapi/$(EXO).vapi						\
	vapi/$(EXO).deps						\
	$(NULL)

pkgconfigdir = $(libdir)/pkgconfig
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
	tests/$(EXO).vala						\
	$(NULL)

CLEANFILES =								\
	tests.stamp							\
	tests/$(LIBXFCE4UTIL)						\
	tests/rcfile.rc							\
	tests/$(XFCONF)							\
	tests/$(EXO)							\
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
