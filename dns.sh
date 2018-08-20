#!/bin/bash

# your dns expirey information details below;

whois techdriver.in | grep $ex  


if [ `echo $?` -ne 0 ]

then 
mail -s "your domain expire" < sandippardeshi@gmail.com

else 
echo "your domain expirey valid "
fi
