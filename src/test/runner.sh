#!/bin/sh

TARGET=$(echo $0 | sed 's@.*/@@g' | sed 's@^test-@@g')
ctmp=$(realpath $ctmp)
echo $TARGET
RETVAL=0

"$TESTSRC_DIR/$TARGET.check" 1>"$TARGET.stdout" 2>"$TARGET.stderr"

if ! diff -q "$TARGET.stdout" "$TESTSRC_DIR/$TARGET.dist"; then
    cat "$TARGET.stderr" >&2
    echo "test for '$TARGET' failed!" >&2
    RETVAL=1
fi

exit $RETVAL
