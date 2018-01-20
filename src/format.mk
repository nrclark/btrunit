SRCS := $(wildcard *.c) $(wildcard *.h)
SRCS += $(wildcard *.h1) $(wildcard *.h2)
SRCS := $(sort $(SRCS))

define \n


endef

test:
	echo $(SRCS)

refactor-%: %
	cp -a $* $*.temp
	sed -i 's@^ *#include@//DUMMYinclude@g' $*.temp
	cproto -a -E 0 $*.temp
	sed -ri 's/\bregister\b//g' $*.temp
	sed -i 's@^//DUMMYinclude@#include@g' $*.temp
	if ! diff -q $*.temp $* 1>/dev/null; then cp $*.temp $*; fi
	rm $*.temp

$(foreach x,$(SRCS),$(eval refactor-$x:$(\n)$(\n)))
refactor: $(foreach x,$(SRCS),refactor-$x)

format-%: %
	cp -a $* $*.temp.c
	sed -i 's@^ *#include@//DUMMYinclude@g' $*.temp.c
	sed -ri 's/[ \t]+/ /g' $*.temp.c
	clang-format -style="{BasedOnStyle: llvm, ColumnLimit: 1024}" -i $*.temp.c
	astyle --options=astyle.opts $*.temp.c
	clang-format -style="{BasedOnStyle: llvm, ColumnLimit: 80, AlignAfterOpenBracket: true}" -i $*.temp.c
	cat $*.temp.c | perl -pe 's/[=][ \t]*\n/= /g' > $*.temp2.c && mv $*.temp2.c $*.temp.c
	cat $*.temp.c | sed -r 's/[=][ \t]+/= /g' > $*.temp2.c && mv $*.temp2.c $*.temp.c
	cat $*.temp.c | sed -r 's/[=] [#]if/=\n#if/g' > $*.temp2.c && mv $*.temp2.c $*.temp.c
	sed -ri 's/[ \t]+\\$$/ \\/g' $*.temp.c
	uncrustify -c uncrustify.cfg --no-backup $*.temp.c -lc
	cat $*.temp.c | \
		python -c 'import re; import sys; data = sys.stdin.read().decode(); sys.stdout.write(re.sub("^[ \t]*[\n][ \t]*[}]", "}", data, flags=re.M))' \
		> $*.temp2.c && mv $*.temp2.c $*.temp.c
	astyle --options=astyle.opts $*.temp.c
	sed -i 's@^// *DUMMYinclude@#include@g' $*.temp.c
	if ! diff -q $*.temp.c $* 1>/dev/null; then cp $*.temp.c $*; fi
	rm $*.temp.c

$(foreach x,$(SRCS),$(eval format-$x:$(\n)$(\n)))
format: $(foreach x,$(SRCS),format-$x)
