
# Verifies that a C compiler flag is supported. Throws an AC_MSG_ERROR
# if the flag doesn't work.

AC_DEFUN([AX_CHECK_CFLAGS],
  [
  for flag_break in "$1"; do
    for flag in $flag_break; do
      ORIG_CFLAGS="$CFLAGS"
      AC_MSG_CHECKING([whether compiler supports $flag])
      CFLAGS="$ORIG_CFLAGS $flag"
      AC_TRY_COMPILE(,
         [void f() {};],
         [AC_MSG_RESULT(yes)],
         [AC_MSG_RESULT(no)
          AC_MSG_ERROR([flag '$flag' not supported])]
      )
      CFLAGS="$ORIG_CFLAGS"
      done
    done
  ]
)

# Verifies that a C compiler flag is supported and adds it to CFLAGS.
# Throws an AC_MSG_ERROR if the flag doesn't work.

AC_DEFUN([AX_ENABLE_CFLAGS],
  [
  for flag_break in "$1"; do
    for flag in $flag_break; do
      AX_CHECK_CFLAGS([$flag])
      AS_VAR_APPEND([CFLAGS],[" $flag"])
    done
  done
  ]
)
