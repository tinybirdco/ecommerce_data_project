#!/bin/bash

fail=0;

for t in `ls -1 tests/*.test`; do
    echo "** Running $t **"
    echo "** $(cat $t)"
    if res=$(bash $t $1 | diff --ignore-all-space ${t}.result -); then
        echo 'OK';
    else
        echo "failed, diff:";
        echo "$res";
        fail=1
    fi
    echo ""
done;

if [ $fail == 1 ]; then
    exit -1;
fi

