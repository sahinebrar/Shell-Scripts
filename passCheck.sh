#!/usr/bin
#it checks the password if it includes capital letter, special character,numeric
PASSWORD=$1
egrep '[^0-9]{8,}'& egrep '[0-9]{1,}'& egrep '[^A-Za-z0-9]{1,}'& egrep '^.{8,}$' $PASSWORD
