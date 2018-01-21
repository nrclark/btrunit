# Checks for the struct futmpx type. Based on original upstream checker.

AC_DEFUN([AX_TYPE_STRUCT_FUTMPX],
    [
        AC_CHECK_TYPE([struct futmpx],
        [AC_DEFINE(HAVE_STRUCT_FUTMPX, 1,
                   [Define to 1 if you have the 'struct futmpx' type])],
        [],
        [[#include <sys/types.h>
        #include <utmpx.h>]])
    ]
)

