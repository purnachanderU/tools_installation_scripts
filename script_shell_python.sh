#!/bin/bash

str="kratrashi"
rev=""
for ((i=${#str}-1; i>=0; i--))
do
        rev="${rev}${str:$i:1}"
done
echo "$rev"

#######single line#####
echo "Kar.manchkki" | awk -F'.' '{print $1; print $2; print "Count of a:", gsub(/[aA]/,"&")}'

#########
s = "Kar.manchi"

rev = ""

for ch in s:
    rev = ch + rev
print(rev)

################
s = "Kar.manchi"

print(s[::-1])
###########################
str="hello.worllld"
print(str[::-1])
rev=""
for ch in str:
    rev = ch + rev
print(rev)
