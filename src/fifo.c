/* Public domain. */

#include <sys/types.h>
#include <sys/stat.h>

#include "config.h"
#include "fifo.h"

#ifdef HAVE_MKFIFO
int fifo_make(const char *fn, int mode)
{
    return mkfifo(fn, mode);
}
#else
int fifo_make(const char *fn, int mode)
{
    return mknod(fn, S_IFIFO | mode, 0);
}
#endif
