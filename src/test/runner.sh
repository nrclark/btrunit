#!/bin/bash

TARGET=$(echo $0 | sed 's@.*/@@g' | sed 's@^test-@@g')
ctmp=$(realpath $ctmp)
echo $TARGET
RETVAL=0

"$TESTSRC_DIR/$TARGET.check" 2>&1 | cat -v >"$TARGET.stdout"

if ! diff -q "$TARGET.stdout" "$TESTSRC_DIR/$TARGET.dist"; then
    echo "test for '$TARGET' failed!" >&2
    echo "------ diff: ------" >&2
    diff -u "$TARGET.stdout" "$TESTSRC_DIR/$TARGET.dist"  --color >&2
    RETVAL=1
fi

exit $RETVAL
