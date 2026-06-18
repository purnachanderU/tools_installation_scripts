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

########################################################
st = "hello.devops"

parts = st.split(".")
print(parts[0])
print(parts[1])

##########import subprocess #################################
import subprocess
st = "hello.devops"
cmd = f"echo '{st}' | awk -F'.' '{{print $1; print $2}}'"
output = subprocess.check_output(cmd, shell=True, text=True)
print(output)
# Reverse using slicing
s = "devops.batch"
print("Reverse:", s[::-1])
# Reverse using for loop
st = "forloop.batch15"
ch = ""
for i in st:
    ch = i + ch
print("Reverse using loop:", ch)
######################################################
