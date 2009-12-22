VALAFLAGS = --pkg=gtk+-2.0 --pkg=libxfce4panel-1.0

plugindir = $(libdir)/xfce4/panel-plugins
plugin_LTLIBRARIES = libbutton.la

libbutton_la_SOURCES = button.vala
libbutton_la_CFLAGS = @LIBXFCE4PANEL_CFLAGS@
libbutton_la_LIBADD = @LIBXFCE4PANEL_LIBS@

button.desktop: button.desktop.in
	$(AM_V_GEN)sed -e "s^@EXTERNAL_PLUGIN_PATH@^$(plugindir)^" $< > $@
desktopdir = $(datadir)/xfce4/panel-plugins
desktop_DATA = button.desktop

EXTRA_DIST = button.desktop.in
DISTCLEANFILES = button.desktop
