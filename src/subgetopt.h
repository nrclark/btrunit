/* Public domain. */

#ifndef SUBGETOPT_H
#define SUBGETOPT_H

#ifndef SUBGETOPTNOSHORT
#define sgopt subgetopt
#define sgoptarg subgetoptarg
#define sgoptind subgetoptind
#define sgoptpos subgetoptpos
#define sgoptproblem subgetoptproblem
#define sgoptprogname subgetoptprogname
#define sgoptdone subgetoptdone
#endif

#define SUBGETOPTDONE -1

int subgetopt(int, char *const *, const char *);
const char *subgetoptarg;
int subgetoptind;
int subgetoptpos;
int subgetoptproblem;
const char *subgetoptprogname;
int subgetoptdone;

#endif
