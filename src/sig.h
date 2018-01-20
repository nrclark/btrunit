/* Public domain. */

#ifndef SIG_H
#define SIG_H

extern int sig_alarm;
extern int sig_child;
extern int sig_cont;
extern int sig_hangup;
extern int sig_int;
extern int sig_pipe;
extern int sig_term;

void (*sig_defaulthandler)();
void (*sig_ignorehandler)();

void sig_catch(int, void (*)());
#define sig_ignore(s) (sig_catch((s), sig_ignorehandler))
#define sig_uncatch(s) (sig_catch((s), sig_defaulthandler))

void sig_block(int);
void sig_unblock(int);
void sig_blocknone(void);
void sig_pause(void);

void sig_dfl(int);

#endif
