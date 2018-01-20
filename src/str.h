/* Public domain. */

#ifndef STR_H
#define STR_H

unsigned int str_copy(char *, const char *);
int str_diff(const char *, const char *);
int str_diffn(const char *, const char *, unsigned int);
unsigned int str_len(const char *);
unsigned int str_chr(const char *, int);
unsigned int str_rchr(const char *, int);
int str_start(const char *, const char *);

#define str_equal(s, t) (!str_diff((s), (t)))

#endif
