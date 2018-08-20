#!/bin/bash
while read line
do
chage -l $line | grep ex | tail -n 1
done <passwd
