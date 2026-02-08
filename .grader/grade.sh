#!/bin/bash

score=0
total=3

sqlite3 test.db < .grader/init.sql

for i in 1 2 3
do
    sqlite3 test.db < answers/q$i.sql > student.txt
    diff -q student.txt .grader/expected/q$i.txt

    if [ $? -eq 0 ]; then
        echo "Q$i: OK"
        score=$((score+1))
    else
        echo "Q$i: WRONG"
    fi
done

echo "Score: $score / $total"
