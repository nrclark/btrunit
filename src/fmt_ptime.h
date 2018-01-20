#ifndef FMT_PTIME_H
#define FMT_PTIME_H

#define FMT_PTIME 30

#include <time.h>
#include <sys/time.h>
#include "taia.h"

unsigned int fmt_ptime(char *, struct taia *);
unsigned int fmt_ptime_iso8601(char *, struct taia *);
unsigned int fmt_taia(char *, struct taia *);

#endif
