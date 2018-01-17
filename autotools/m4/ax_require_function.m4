AC_DEFUN([AX_REQUIRE_FUNCTION], [AC_CHECK_FUNC([$1],,
         [AC_MSG_ERROR([Missing function "$1" required for '$2'.])])])

AC_DEFUN([AX_REQUIRE_HEADER], [AC_CHECK_HEADER([$1],,
         [AC_MSG_ERROR([Missing header "$1" required for '$2'.])])])
