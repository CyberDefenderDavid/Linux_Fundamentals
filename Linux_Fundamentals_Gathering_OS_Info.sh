#! bin/bash

#1. Display the Linux version.
#2. Display the private IP address, public IP address, and the default gateway.
#3. Display the hard disk size; free and used space.
#4. Display the top five (5) directories and their size.
#5. Display the CPU usage; refresh every 10 seconds.

# Display the Linux version.
#use 'cat /etc/os-release' to find the Linux version
#variable is "Linux_version" & use "cat /etc/os-release" to find version
Linux_version=$(cat /etc/os-release | grep VERSION= | awk -F\" '{print $2}')
#print out the version
echo "1. Display the Linux version."
#print out the the variable
echo "Your linux version is $Linux_version "

echo
# Display the private IP address, public IP address, and the default gateway.
#use ifconfig to find the ip, remove localhost and print the second row
private=$(ifconfig | grep 'inet ' | grep -v '127.0.0.1' | awk '{print $2}')
#use curl on ifconfig to find ip and -s to slient the process.
public=$(curl -s ifconfig.me)
#use ip route to find the ip, then grep and awk.
gateway=$(ip route | grep default | awk '{print $3}')
#print 
echo "2. Display the private IP address, public IP address, and the default gateway."
#print the variables which is $private
echo "Your private IP address is $private"
#print the variables which is $public
echo "Your public IP address is $public "
#print the variables which is $gateway
echo "Your default gateway is $gateway"

echo
# Display the hard disk size, free and used space.
#hard disk size
size=$(df -h / | tail -n 1 | awk '{print $2}')
#hard disk free space
free=$(df -h / | tail -n 1 | awk '{print $4}')
#hard disk used space
used=$(df -h / | tail -n 1 | awk '{print $3}')
#print the numbers in awk $2,$3,$4
echo "3. Display the hard disk size, free and used space."
echo "Your hard disk size is $size"
echo "Your hard disk free space is $free"
echo "Your hard disk used space is $used"

echo
#4. Display the top five (5) directories and their size.
#print the top 5 dir and show the size
echo "4. Display the top five (5) directories and their size."
#use 2>/dev/null to hide errors. then sort according to size. 
du -h -d 1 / 2>/dev/null | sort -h | tail  -n 6 | head -n 5

echo
#5. Display the CPU usage; refresh every 10 seconds.
echo "5. Display the CPU usage; refresh every 10 seconds."
#open top, then -d and 10second
top -d 10

echo
