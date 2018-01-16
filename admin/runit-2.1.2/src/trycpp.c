/* Public domain. */

int
main(void)
{
#ifdef NeXT
    printf("nextstep\n");
    exit(0);
#endif
    printf("unknown\n");
    exit(0);
}
