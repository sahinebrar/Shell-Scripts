#!/bin/sh
#it adds database to given year like YYYY-MM-DD
GIVENDATE=$1
YEAR=$(sqlite3 poorman-diary.db "select strftime('%Y','$GIVENDATE');")
DAY=$(sqlite3 poorman-diary.db "select strftime('%d %m','$GIVENDATE');")
sqlite3 poorman-diary.db "insert into event values(5,4,$YEAR,"$DAY",'Easter')"

echo $(sqlite3 poorman-diary.db "select strftime('%Y','$GIVENDATE');")
echo $(sqlite3 poorman-diary.db "select strftime('%m-%d','$GIVENDATE');")
