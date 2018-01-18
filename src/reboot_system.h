#include <unistd.h>
#include <sys/reboot.h>

#include "config.h"

static inline int reboot_system(int what)
{
#if REBOOT_NARGS == 1
    return reboot(what);
#elif REBOOT_NARGS == 2
    return reboot(what, (char *)0);
#else
#error "Reboot is broken!"
#endif
}
