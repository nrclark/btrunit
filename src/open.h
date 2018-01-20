/* Public domain. */

#ifndef OPEN_H
#define OPEN_H

int open_read(const char *);
int open_excl(const char *);
int open_append(const char *);
int open_trunc(const char *);
int open_write(const char *);

#endif
