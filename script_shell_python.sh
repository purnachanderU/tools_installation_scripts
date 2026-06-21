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
### useradd script ###################################
sudo useradd -m ansible
sudo mkdir -p /home/ansible/.ssh
sudo cp ~/.ssh/authorized_keys /home/ansible/.ssh/
sudo chown -R ansible:ansible /home/ansible/.ssh
sudo chmod 700 /home/ansible/.ssh
sudo chmod 600 /home/ansible/.ssh/authorized_keys
echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
#########################################################################
######## 
mylist=[1,-2,3,2,5,4,5,-2,-3,4,-5,6,-6,-9,-9,-3,-2]
dup = []
for i in mylist:
    if mylist.count(i) > 1 and i not in dup:
        dup.append(i)
############################################################################
mylist=[1,2,3,2,5,4,5]
newlist = []
for i in mylist:
    if i not in dup:
        newlist.append(i)
print(newlist)
################################################################
###### using set will #########################################
mylist=[1,2,3,2,5,4,5,-2,-3,4,-5,6,-6,-9,-9]
seen = set()
dup = set()
newlist = []
for i in mylist:
    if i in seen:
        dup.add(i)
    else:
        seen.add(i)
        newlist.append(i)
print("Duplicates :", list(dup))
print("New List   :", newlist)
#####################################################
##################################################
mylist=[1,2,3,2,5,4,5,-2,-3,4,-5,6,-6,-9,-9]
seen = set()
dup = set()
newlist = []
for i in mylist:
    if i in seen:
        dup.add(i)
    else:
        seen.add(i)
        newlist.append(i)

print("Duplicates :", sorted(dup))
print("New List   :", sorted(newlist))
###################################################
#######py revers.py
[1, 2, 3, 4, 5]
mylist_rev [5, 5, 3, 2, 5, 4, 3, 2, 1]
mylist_sort [1, 2, 2, 3, 3, 4, 5, 5, 5]
[ansible@ip-172-31-30-204 pythonf]$ cat revers.py
mylist = [1,2,3,4,5,2,3,5,5]
print(list(set(mylist)))
mylist.reverse()
print("mylist_rev", mylist)
mylist.sort()
print("mylist_sort", mylist)
