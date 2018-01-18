/* Public domain. */

#ifndef PROT_H
#define PROT_H

#include "config.h"

#ifdef HAVE_UNISTD_H
#include <sys/types.h>
#include <unistd.h>
#endif

int prot_gid(gid_t gid);
int prot_uid(uid_t uid);

#endif
