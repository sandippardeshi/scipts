#!/bin/bash
while read line;
do
chage -l $line | grep ex | head -n 2
done <usernamelist
