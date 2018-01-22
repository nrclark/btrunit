noinst_LIBRARIES = libunix.a libbyte.a libtime.a

libunix_a_SOURCES = \
alloc.c alloc_re.c buffer.c buffer_0.c buffer_1.c buffer_2.c buffer_get.c \
buffer_put.c buffer_read.c buffer_write.c coe.c env.c error.c error_str.c \
fd_copy.c fd_move.c fifo.c lock_ex.c lock_exnb.c ndelay_off.c ndelay_on.c \
open_append.c open_read.c open_trunc.c open_write.c openreadclose.c \
pathexec_env.c pathexec_run.c prot.c readclose.c seek_set.c sgetopt.c \
sig.c sig_block.c sig_catch.c sig_pause.c stralloc_cat.c stralloc_catb.c \
stralloc_cats.c stralloc_ready.c stralloc_opyb.c stralloc_opys.c \
stralloc_pend.c strerr_die.c strerr_sys.c subgetopt.c wait_nohang.c wait_pid.c

libbyte_a_SOURCES = \
byte_chr.c byte_copy.c byte_cr.c byte_diff.c byte_rchr.c fmt_uint.c \
fmt_uint0.c fmt_ulong.c scan_ulong.c str_chr.c str_diff.c str_len.c str_start.c

libtime_a_SOURCES = \
iopause.c tai_now.c tai_pack.c tai_sub.c tai_unpack.c taia_add.c taia_approx.c \
taia_frac.c taia_less.c taia_now.c taia_pack.c taia_sub.c taia_uint.c

LDADD = libunix.a libbyte.a libtime.a

bin_PROGRAMS = runit runit-init runsv runsvdir runsvstat runsvctrl sv svwaitup \
svwaitdown utmpset runsvchdir svlogd chpst

runit_SOURCES = runit.c
runit_init_SOURCES = runit-init.c
runsv_SOURCES = runsv.c
runsvdir_SOURCES = runsvdir.c
runsvstat_SOURCES = runsvstat.c
runsvctrl_SOURCES = runsvctrl.c
sv_SOURCES = sv.c
svwaitup_SOURCES = svwaitup.c
svwaitdown_SOURCES = svwaitdown.c
utmpset_SOURCES = utmpset.c
runsvchdir_SOURCES = runsvchdir.c
svlogd_SOURCES = svlogd.c pmatch.c fmt_ptime.c
chpst_SOURCES = chpst.c uidgid.c

noinst_HEADERS = \
alloc.h buffer.h byte.h coe.h dirent_config.h env.h error.h fd.h fifo.h \
fmt.h fmt_ptime.h gen_allocdefs.h gen_alloc.h iopause.h lock.h ndelay.h \
open.h openreadclose.h pathexec.h pmatch.h prot.h readclose.h reboot_system.h \
runit.h scan.h seek.h sgetopt.h sig.h stralloc.h strerr.h str.h subgetopt.h \
taia.h tai.h uidgid.h uw_tmp.h wait.h

TESTS_ENVIRONMENT = TESTSRC_DIR=$(srcdir)/test PATH=.:$(PATH) ctmp=ctmp $(SHELL)
TESTS = \
test-chpst test-runit test-runit-init test-runsvchdir test-runsv \
test-runsvctrl test-runsvdir test-runsvstat test-sv test-svlogd \
test-svwaitdown test-svwaitup test-utmpset

$(TESTS): $(srcdir)/test/runner.sh
	$(INSTALL_SCRIPT) $< $@
