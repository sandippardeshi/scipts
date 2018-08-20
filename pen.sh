#!/bin/bash
while read line;
do
om=`chage -l $line | grep "Password expires" | cut -d ':' -f 2`
if [ "$om" = " never" ]
then 
echo " please set the expirey password for the user $line "
else
echo " your password expirey is set"
fi
done <list
