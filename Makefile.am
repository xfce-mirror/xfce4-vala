NULL = 

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
		../packages/$(XFCONF)/$(XFCONF).gi;\
	$(VAPIGEN) --vapidir=. --library $(LIBXFCEGUI4)\
		../packages/$(LIBXFCEGUI4)/$(LIBXFCEGUI4).gi;\
	$(VAPIGEN) --vapidir=. --library $(EXO)\
		../packages/$(EXO)/$(EXO).gi;\
	)

tests: tests.stamp

tests.stamp:
	(cd tests;\
	$(VALAC) --pkg=$(LIBXFCE4UTIL) --vapidir=../vapi $(LIBXFCE4UTIL).vala;\
	$(VALAC) --pkg=gtk+-2.0 --pkg=$(LIBXFCE4MENU) --vapidir=../vapi $(LIBXFCE4MENU).vala;\
	)
	touch $@

EXTRA_DIST =								\
	AUTHORS								\
	ChangeLog							\
	COPYING								\
	INSTALL								\
	NEWS								\
	README								\
	$(NULL)

CLEANFILES =								\
	tests.stamp							\
	tests/$(LIBXFCE4UTIL)						\
	tests/rcfile.rc							\
	$(NULL)

DISTCLEANFILES =							\
	INSTALL								\
	aclocal.m4							\
	configure							\
	configure.ac							\
	install-sh							\
	Makefile.in							\
	missing								\
	$(NULL)

# vi:set ts=8 sw=8 noet ai nocindent syntax=automake:
