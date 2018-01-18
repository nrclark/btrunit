/* Public domain. */

#include <signal.h>
#include "sig.h"
#include "config.h"

void sig_pause(void)
{
#ifdef HAVE_SIGPROCMASK
    sigset_t ss;
    sigemptyset(&ss);
    sigsuspend(&ss);
#else
    sigpause(0);
#endif
}
