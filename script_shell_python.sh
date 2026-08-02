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
########################################
###https://github.com/N4si/cloud-native-monitoring-app/blob/main/README.md
###https://github.com/N4si/K8s-voting-app
######################################
import requests
#log_url = "https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/apache_logs/apache_logs"
log_url = input("Enter the log_url: ")
response = requests.get(log_url)
logs = response.text.splitlines()
#print(logs)
for log in logs:
    if '404' in log:
        print(log)
#####################################################
import docker
client = docker.from_env()
image_name = input("Enter the docker image name: ")
client.images.pull(image_name)
print("pulling the image")
container = client.containers.run(image_name, detach=True)
print("container is running")
#########################################################
def greet(name="Guest"):
    print(f"Hello {name}, welcome to the parameter.")
name = input("Enter the name: ")
if name:
    greet(name)
else:
    greet()
##################################
correctf.py
logfile = "/home/ubuntu/logfolder/logfile2.txt"
count=0
for log in open(logfile):
    if "404" in log:
        count+=1
print(count)
#######################################
withopenread.py
logfile = "/home/ubuntu/logfolder/logfile2.txt"

count=0
with open(logfile, 'r') as file:
    for line in file:
        if "404" in line:
            count+=1
print(count)
#####################################################
#!/bin/bash
thresold=80
CPU=$(top -bn1| grep 'Cpu(s)' | awk '{print int($2+$4)}')
Memory=$(free | awk '/Mem:/ {print int($3/$2*100)}')
Disk=$(df / | awk 'NR=2 {gsub("%",""); print $5}')
=======================
#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2+$4)}')
MEMORY=$(free | awk '/Mem:/ {print int($3/$2*100)}')
DISK=$(df / | awk 'NR==2 {gsub("%",""); print $5}')
if [ $CPU -gt 80 ]; then
    echo "CPU Alert"
else
    echo " CPU is NOrmal ${CPU}%"
fi
if [ $MEMORY -gt 80 ]; then
    echo "Memory Alert"
else
    echo " Memorey is usage is normal ${MEMORY}%"
fi
if [ $DISK -gt 80 ]; then
    echo "Disk Alert"
fi
==================================================
import psutil (psutil it has to installed)
thresold=80
cpu=psutil.cpu_percent(interval=1)
memory=psutil.virtual_memory().percent
diskusage=psutil.disk_usage("/").percent
if cpu > thresold:
    print(f"cpu usage is above thresold {cpu}%")
else:
    print(f"cpu usage is normal {cpu}%")
if diskusage > thresold:
    print(f"disk usage is above thresold {diskusage}%")
else:
    print(f"disk usage is normal {diskusage}%")
if memory > thresold:
    print(f" memory utilization is above thresold {memory}%")
else:
    print(f"memory utilization is normal {memory}%")

################################################################
import requests
enter_apiurl=input("enter_apiurl for logcount: ")
response=requests.get(enter_apiurl)
logs=response.text.splitlines()
count=0
for log in logs:
    if "404" in log:
        count+=1
print(count)
enter_logpath=input("Enter log path: ")
try:
    enter_logpath=input("Enter log path: ")
except FilenotFound as ex:
    print(ex)
count=0
with open(enter_logpath , 'r') as file:
    for line in file:
        if "404" in line:
            count+=1
print(count)'''
enter_logpath = input("Enter log path: ").strip()   # Get path once
count=0
try:
    with open(enter_logpath, 'r') as file:
        for line in file:
            if "404" in line:
                count+=1
    print(count)
except FileNotFoundError as ex:
    print(f"Error: {ex}")
    print("plese enter correct file name:")
except Exception as e:          # optional: catch other unexpected errors
    print(f"Unexpected error: {e}")
##################################################################################3







