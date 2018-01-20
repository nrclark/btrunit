/* Public domain. */

#ifndef FMT_H
#define FMT_H

#define FMT_ULONG 40 /* enough space to hold 2^128 - 1 in decimal, plus \0 */
#define FMT_LEN ((char *)0) /* convenient abbreviation */

unsigned int fmt_uint(char *, unsigned int);
unsigned int fmt_uint0(char *, unsigned int, unsigned int);
unsigned int fmt_xint(char *, unsigned int);
extern unsigned int fmt_nbbint(char *, unsigned int, unsigned int, unsigned int,
                               unsigned int);
unsigned int fmt_ushort(char *, unsigned short);
unsigned int fmt_xshort(char *, unsigned short);
extern unsigned int fmt_nbbshort(char *, unsigned int, unsigned int,
                                 unsigned int, unsigned short);
unsigned int fmt_ulong(char *, unsigned long);
unsigned int fmt_xlong(char *, unsigned long);
extern unsigned int fmt_nbblong(char *, unsigned int, unsigned int,
                                unsigned int, unsigned long);

unsigned int fmt_plusminus(char *, int);
unsigned int fmt_minus(char *, int);
unsigned int fmt_0x(char *, int);

unsigned int fmt_str(char *, const char *);
unsigned int fmt_strn(char *, const char *, unsigned int);

#endif
