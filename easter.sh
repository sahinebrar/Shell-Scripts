#!/bin/sh
#it finds date of easter from given year and adds to database

GIVENDATE=$1
declare -i A
A=$GIVENDATE%19
declare -i B
B=$GIVENDATE/100
declare -i C 
C=$GIVENDATE%100
declare -i D 
D=$B/4
declare -i G
G=8*$B+13 
declare -i Q
Q=$G/25
declare -i H
H=19*$A+$B-$D+15
declare -i O
O=$H%30
declare -i M
M=$A+11*$O
declare -i Z
Z=$M/319 
declare -i J
J=$C/4
declare -i K 
K=$C%4
declare -i L
L=2*$E+2*$J-$K-$O+$Z+32 
declare -i T
T=$L%7
declare -i N
N=$O-$Z+$T+90
declare -i W
W=$N/25
declare -i P
P=$O-$Z+$T+$W+19
declare -i X
X=$P%32
echo $W $X
sqlite3 poorman-diary.db " insert into event values(5,4,$GIVENDATE,'$W-$X','Easter')"
