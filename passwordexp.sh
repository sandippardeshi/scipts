#!/bin/bash
while read line;
do
om=`chage -l $line | grep "Password expires" | cut -d ':' -f 2`
if [ "$om" = " never" ]
then 
chage -M 20 $line
echo " all user set the expirey password $line"
#echo " please set the expirey password for the user $line "
else
echo " user $line has  password expirey is set to $om"
fi
done <list
#om
