#!/bin/bash
while read line;
do
apt-get install $line;
done <app
