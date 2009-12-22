dnl Initialize
AC_INIT([Xfce4 Vala], [project_version], [mmassonnet@xfce.org], [xfce4-vala])
AM_INIT_AUTOMAKE([1.11 dist-bzip2])
AM_MAINTAINER_MODE()
AM_SILENT_RULES([yes])

dnl Check for basic programs
AC_PROG_INSTALL()
AC_PROG_LIBTOOL()

dnl Check for required packages
XDT_CHECK_PACKAGE([LIBXFCE4PANEL], [libxfce4panel-1.0], [4.7.0])

dnl Check for Vala
AM_PROG_VALAC()

dnl Makefile outputs
AC_OUTPUT([
Makefile
])

