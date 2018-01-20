/* Public domain. */

#ifndef SEEK_H
#define SEEK_H

typedef unsigned long seek_pos;

seek_pos seek_cur(int);

int seek_set(int, seek_pos);
int seek_end(int);

int seek_trunc(int, seek_pos);

#define seek_begin(fd) (seek_set((fd), (seek_pos)0))

#endif
