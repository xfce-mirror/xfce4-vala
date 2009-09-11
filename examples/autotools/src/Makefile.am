INCLUDES =								\
	-I$(top_srcdir)							\
	-DGETTEXT_PACKAGE=\""$(GETTEXT_PACKAGE)"\"			\
	-DPACKAGE_LOCALE_DIR=\""$(localedir)"\"

#
# Vala sources
#

product_VAPISOURCES =							\
	config.vapi

product_VALASOURCES =							\
	obj1.vala							\
	obj2.vala							\
	main.vala

product_VALABUILTSOURCES = $(product_VALASOURCES:.vala=.c) product.h

if MAINTAINER_MODE
PACKAGES = --pkg=gtk+-2.0
BUILT_SOURCES = vala.stamp
vala.stamp: $(product_VALASOURCES)
	$(VALAC) --vapidir=$(srcdir) --pkg=config $(PACKAGES) $^ -C -H product.h
	touch $@
endif

#
# Product
#

bin_PROGRAMS = product

product_SOURCES =							\
	source1.c							\
	source1.h							\
	source2.c							\
	source2.h							\
	$(product_VALABUILTSOURCES)

product_CFLAGS =							\
	@GTK_CFLAGS@

product_LDADD =								\
	@GTK_LIBS@

#
# Extra
#

EXTRA_DIST =								\
	$(product_VAPISOURCES)						\
	$(product_VALASOURCES)

if MAINTAINER_MODE
CLEANFILES =								\
	$(BUILT_SOURCES)						\
	$(product_VALABUILTSOURCES)
endif

