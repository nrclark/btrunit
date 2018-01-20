/* Public domain. */

#ifndef READCLOSE_H
#define READCLOSE_H

#include "stralloc.h"

int readclose_append(int, stralloc *, unsigned int);
int readclose(int, stralloc *, unsigned int);

#endif
