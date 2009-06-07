NULL = 

if MAINTAINER_MODE
update-gi:
	$(VALAGI) $(LIBXFCE4UTIL) packages/$(LIBXFCE4UTIL)
	$(VALAGI) $(LIBXFCE4MENU) packages/$(LIBXFCE4MENU)
	$(VALAGI) $(XFCONF) packages/$(XFCONF)
	$(VALAGI) $(LIBXFCEGUI4) packages/$(LIBXFCEGUI4)
	$(VALAGI) $(EXO) packages/$(EXO)

update-vapi:
	(cd vapi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4UTIL)\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL).gi\
		../packages/$(LIBXFCE4UTIL)/$(LIBXFCE4UTIL)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCE4MENU)\
		../packages/$(LIBXFCE4MENU)/$(LIBXFCE4MENU).gi\
		../packages/$(LIBXFCE4MENU)/$(LIBXFCE4MENU)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(XFCONF)\
		../packages/$(XFCONF)/$(XFCONF).gi\
		../packages/$(XFCONF)/$(XFCONF)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCEGUI4)\
		../packages/$(LIBXFCEGUI4)/$(LIBXFCEGUI4).gi\
		../packages/$(LIBXFCEGUI4)/$(LIBXFCEGUI4)-custom.vala;\
	$(VAPIGEN) --vapidir=. --library $(EXO)\
		../packages/$(EXO)/$(EXO).gi\
		../packages/$(EXO)/$(EXO)-custom.vala;\
	)
	for i in packages/*/*.deps; do cp $$i vapi; done
endif

tests: tests.stamp
tests.stamp:
	(cd tests;\
	$(VALAC) --pkg=$(LIBXFCE4UTIL) --vapidir=../vapi $(LIBXFCE4UTIL).vala;\
	$(VALAC) --pkg=gtk+-2.0 --pkg=$(LIBXFCE4MENU) --vapidir=../vapi $(LIBXFCE4MENU).vala;\
	$(VALAC) --pkg=$(XFCONF) --vapidir=../vapi $(XFCONF).vala;\
	$(VALAC) --pkg=$(LIBXFCEGUI4) --vapidir=../vapi $(LIBXFCEGUI4).vala;\
	)
	touch $@

vapidir = $(datadir)/vala/vapi
vapi_DATA =								\
	vapi/$(LIBXFCE4UTIL).vapi					\
	vapi/$(LIBXFCE4MENU).vapi					\
	vapi/$(XFCONF).vapi						\
	vapi/$(LIBXFCEGUI4).vapi					\
	vapi/$(LIBXFCEGUI4).deps					\
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
	packages							\
	vapi								\
	$(NULL)

CLEANFILES =								\
	tests.stamp							\
	tests/$(LIBXFCE4UTIL)						\
	tests/rcfile.rc							\
	tests/$(LIBXFCE4MENU)						\
	tests/$(XFCONF)							\
	$(NULL)

distclean-local:
	-rm -rf autom4te.cache

DISTCLEANFILES =							\
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
