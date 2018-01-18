/* Public domain. */

#include <sys/types.h>
#include <sys/wait.h>
#include "config.h"

int wait_nohang(int *wstat)
{
#ifdef HAVE_WAITPID
    return waitpid(-1, wstat, WNOHANG);
#else
#ifndef HAVE_WAIT3
    #error "No wait function could be found."
#endif
    return wait3(wstat, WNOHANG, (struct rusage *)0);
#endif
}
