dnl
dnl Copyright (c) 2009 Mike Massonnet <mmassonnet@xfce.org>
dnl

dnl # M8T_CHECK_PACKAGE(varname, package, minimum_version)
dnl #
dnl # Checks for a package and substitutes the name.
dnl #
AC_DEFUN([M8T_CHECK_PACKAGE],
[
AC_SUBST([$1], [$2])
PKG_CHECK_EXISTS([$2 >= $3], [],
		 AC_MSG_WARN([])
		 AC_MSG_WARN([The package $2 >= $3 was not found])
		 AC_MSG_WARN([You need it to run the introspection tool])
		 AC_MSG_WARN([]))
])

dnl # M8T_CHECK_VALA(minimum_version)
dnl #
dnl # Check for the package vala-0.16 and substitutes useful Vala variables.
dnl #
AC_DEFUN([M8T_CHECK_VALA],
[
PKG_CHECK_MODULES([VALA], [libvala-0.16 >= $1])
M8T_VALA_PROGS()
M8T_VAPI_DIR()
])

dnl # M8T_VALA_PROGS()
dnl #
dnl # Substitutes VALAC, VAPIGEN and VALAGI from vala-0.16 pkgconfig file.
dnl #
AC_DEFUN([M8T_VALA_PROGS],
[
AC_PATH_PROG([VALAC], [valac], [valac])
AC_SUBST([VAPIGEN], `$PKG_CONFIG --variable=vapigen libvala-0.16`)
AC_SUBST([VALAGI], `$PKG_CONFIG --variable=vala_gen_introspect libvala-0.16`)
])

dnl # M8T_VAPI_DIR()
dnl #
dnl # Substitutes vapidir from vala-0.16 pkgconfig file.
dnl #
AC_DEFUN([M8T_VAPI_DIR],
[
AC_SUBST([vapidir], `$PKG_CONFIG --variable=vapidir libvala-0.16`)
])
