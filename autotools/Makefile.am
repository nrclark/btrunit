ACLOCAL_AMFLAGS = -I m4 --install

lib_LTLIBRARIES = libunix.la libbyte.la

libunix_la_LDFLAGS = -release @LIB_RELEASE@
libunix_la_SOURCES = \
src/alloc.c src/alloc_re.c src/buffer.c src/buffer_0.c src/buffer_1.c src/buffer_2.c \
src/buffer_get.c src/buffer_put.c src/buffer_read.c src/buffer_write.c src/coe.c src/env.c \
src/error.c src/error_str.c src/fd_copy.c src/fd_move.c src/fifo.c src/lock_ex.c src/lock_exnb.c \
src/ndelay_off.c src/ndelay_on.c src/open_append.c src/open_read.c \
src/open_trunc.c src/open_write.c src/openreadclose.c src/pathexec_env.c \
src/pathexec_run.c src/prot.c src/readclose.c src/seek_set.c src/sgetopt.c src/sig.c \
src/sig_block.c src/sig_catch.c src/sig_pause.c src/stralloc_cat.c src/stralloc_catb.c \
src/stralloc_cats.c src/stralloc_eady.c src/stralloc_opyb.c src/stralloc_opys.c \
src/stralloc_pend.c src/strerr_die.c src/strerr_sys.c src/subgetopt.c src/wait_nohang.c \
src/wait_pid.c

libbyte_la_LDFLAGS = -release @LIB_RELEASE@
libbyte_la_SOURCES = \
src/byte_chr.c src/byte_copy.c src/byte_cr.c src/byte_diff.c src/byte_rchr.c \
src/fmt_uint.c src/fmt_uint0.c src/fmt_ulong.c src/scan_ulong.c src/str_chr.c \
src/str_diff.c src/str_len.c src/str_start.c

LDADD = libunix.la libbyte.la
#bin_PROGRAMS = chpst runit runit-init runsv runsvchdir runsvdir sv svlogd utmpset
bin_PROGRAMS = chpst
chpst_SOURCES = src/chpst.c src/uidgid.c

