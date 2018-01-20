/* Public domain. */

#ifndef PATHEXEC_H
#define PATHEXEC_H

void pathexec_run(const char *, char *const *, char *const *);
int pathexec_env(const char *, const char *);
void pathexec_env_run(const char *, char *const *);
void pathexec(char *const *);

#endif
