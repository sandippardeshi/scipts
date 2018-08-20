#/bin/bash
#om=`chage -l abcd | grep "Password expires" | cut -d ':' -f 2`


while read line;
do
om=`chage -l $line | grep "Password expires" | cut -d ':' -f 2`
echo " your $line USER password expires date is $om :"
done <file
