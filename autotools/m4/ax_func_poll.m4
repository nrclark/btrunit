# Verifies the existence of the poll() command. If host and target are the
# same, also tries poll() to make sure that it works for files. Otherwise be
# content with whether it exists.

AC_DEFUN([AX_RUN_FUNC_POLL],
    [
        AS_ECHO_N("checking whether poll works... ")
        AC_LANG(C)
        AC_RUN_IFELSE(
            [
                AC_LANG_SOURCE([
                    AC_INCLUDES_DEFAULT
                    [
                    #ifdef HAVE_POLL_H
                    #include <poll.h>
                    #endif

                    #ifdef HAVE_FCNTL_H
                    #include <fcntl.h>
                    #endif

                    int main(void)
                    {
                        struct pollfd x;

                        x.fd = open("$SHELL", O_RDONLY);

                        if (x.fd == -1) {
                            return 111;
                        }

                        x.events = POLLIN;

                        if (poll(&x, 1, 10) == -1) {
                            return 1;
                        }

                        if (x.revents != POLLIN) {
                            return 1;
                        }

                        return 0;
                    }
                    ]
                ])
            ],
            [
            AS_VAR_SET(ac_cv_func_poll, yes)
            AC_DEFINE(HAVE_POLL, 1, [Define to 1 if you have a working `poll' function.])
            ],
            [AS_VAR_SET(ac_cv_func_poll, no)],
            [AS_VAR_SET(ac_cv_func_poll, skipped)]
        )
        AS_ECHO("$ac_cv_func_poll")
        AS_IF([test "x$ac_cv_func_poll" = xskipped],[ac_cv_func_poll=yes])
    ]
)

AC_DEFUN([AX_CHECK_FUNC_POLL],[
AS_IF([test "x$cross_compiling" = xyes],
      [AC_CHECK_FUNCS([poll])],
      [AX_RUN_FUNC_POLL])
])
