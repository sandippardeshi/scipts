#!/bin/bash
while read line 
do 
sandy=`chage -l $line | grep "Password expires" | cut -d ':' -f 2`
echo " your user name is $line and expires days show $sandy"
done <myjob
