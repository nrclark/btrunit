#ifndef _UW_TMP_H_
#define _UW_TMP_H_

#include <sys/types.h>
#include "config.h"

#ifdef HAVE_STRUCT_FUTMPX

#include <utmpx.h>
#define UW_TMP_UFILE _UTMPX_FILE
#define UW_TMP_WFILE _WTMPX_FILE

#ifndef ut_time
#define ut_time ut_tv.tv_sec
#endif

typedef struct futmpx uw_tmp;

#else

#include <utmp.h>

#ifdef _PATH_UTMP
#define UW_TMP_UFILE _PATH_UTMP
#define UW_TMP_WFILE _PATH_WTMP
#else
/* AIX only has UTMP_FILE */
#ifdef UTMP_FILE
#define UW_TMP_UFILE UTMP_FILE
#define UW_TMP_WFILE WTMP_FILE
#else
#error neither _PATH_UTMP nor UTMP_FILE defined.
#endif
#endif

typedef struct utmp uw_tmp;

#endif

#endif
