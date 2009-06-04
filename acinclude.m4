dnl
dnl Copyright (c) 2009 Mike Massonnet <mmassonnet@xfce.org>
dnl

dnl # M8T_CHECK_PACKAGE(varname, package, minimum_version)
dnl #
dnl # Checks for a package and sets a variable
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

