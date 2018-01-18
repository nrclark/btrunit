# Counts the number of arguments to reboot() and stores them in the
# REBOOT_NARGS argument.
#ac_cv_header_sys_reboot_h

AC_DEFUN([AX_GUESS_REBOOT_NARGS],
[
    AS_IF([test "x$ac_cv_header_sys_reboot_h" = x],
          [AC_CHECK_HEADERS([sys/reboot.h])])
    AS_IF([test "x$ac_cv_header_sys_reboot_h" = xno],
          [AC_MSG_FAILURE([error: sys/reboot.h not present on your system!])])
    AS_ECHO_N("counting reboot arguments... ")
    AC_TRY_COMPILE(
        [#include <sys/reboot.h>],
        [reboot(42)],
        [AC_DEFINE(REBOOT_NARGS, 1, [Number of args to 'reboot' function])],
        [AC_TRY_COMPILE(
            [#include <sys/reboot.h>],
            [reboot(42, 0)],
            [AC_DEFINE(REBOOT_NARGS, 2, [Number of args to 'reboot' function])],
            [AC_MSG_FAILURE([configure does't understand your system's reboot()])]
        )]
    )
    AS_ECHO("done")
])
