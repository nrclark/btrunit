/* Public domain. */

#ifndef BYTE_H
#define BYTE_H

unsigned int byte_chr();
unsigned int byte_rchr();
void byte_copy();
void byte_copyr();
int byte_diff();
void byte_zero();

#define byte_equal(s, n, t) (!byte_diff((s), (n), (t)))

#endif
