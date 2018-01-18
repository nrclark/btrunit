#include "config.h"

#include <sys/types.h>
#ifdef HAVE_DIRENT_H
#include <dirent.h>
#define NAMLEN(dirent) strlen ((dirent)->d_name)
#else
#define dirent direct
#define NAMLEN(dirent) ((dirent)->d_namlen)
#ifdef HAVE_SYS_NDIR_H
#include <sys/ndir.h>
#endif
#ifdef HAVE_SYS_DIR_H
#include <sys/dir.h>
#endif
#ifdef HAVE_NDIR_H
#include <ndir.h>
#endif
#endif
