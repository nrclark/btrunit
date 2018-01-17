#------------------------------------------------------------------------------#
# File: Configure.ac
# Original project: BTRunit
# Original author: Nicholas Clark
# File license: GPL 2.0
#------------------------------------------------------------------------------#

#--------------------------- Load Project Version -----------------------------#

# This needs to happen before calling AC_INIT, so the relevant macro must be
# manually included.

m4_include([m4/semantic_version.m4])
SEMANTIC_VERSION_SET_FILE([VERSION])

#------------------------- Initialize Autoconf Project ------------------------#

AC_PREREQ([2.69])
AC_INIT([btrunit], SEMANTIC_VERSION, [nicholas.clark@gmail.com])
AC_SUBST([LIB_RELEASE],[SEMANTIC_VERSION])

AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_SRCDIR([src/sv.c])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE([foreign subdir-objects serial-tests])
AC_USE_SYSTEM_EXTENSIONS

#------------------------- Run Basic Feature Checks  --------------------------#

AC_PROG_CC
AC_PROG_INSTALL
AM_PROG_AR
AM_PROG_LIBTOOL
LT_INIT

AC_CHECK_HEADERS([inttypes.h limits.h stdint.h stdlib.h string.h])
AC_C_INLINE

AC_TYPE_INT32_T
AC_TYPE_INT64_T

AC_TYPE_UINT8_T
AC_TYPE_UINT16_T
AC_TYPE_UINT32_T
AC_TYPE_UINT64_T

AC_TYPE_MODE_T

#------------------------- Run Basic Feature Checks  --------------------------#

AC_CHECK_HEADERS([fcntl.h netinet/in.h stdlib.h string.h sys/file.h \
                  sys/ioctl.h sys/param.h sys/socket.h sys/time.h unistd.h \
                  utmp.h utmpx.h grp.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_UID_T
AC_TYPE_OFF_T

# Checks for library functions.
AC_FUNC_FORK
AC_FUNC_GETGROUPS
AC_FUNC_MALLOC

AC_CHECK_FUNCS([dup2 fchdir ftruncate gettimeofday memset mkdir mkfifo \
                select socket flock sigprocmask sigaction waitpid])

AS_IF([test "x$ac_cv_func_waitpid" = xyes],,[AC_FUNC_WAIT3])

AC_HEADER_DIRENT

#---------------------- Configure For Feature Selection  ----------------------#

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
