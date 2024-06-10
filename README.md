# Linux Fundamentals (Gathering OS Info)

## Project Objective
Create automation to display the Linux operating system information.

## Tasks

### 1. Display the Linux Version
- Write a script to output the current Linux version.
- Use commands like `uname -a` or `cat /etc/os-release` to gather the necessary information.

### 2. Display Network Information
- Display the private IP address, public IP address, and the default gateway.
- Use commands such as `ip addr show`, `curl ifconfig.me`, and `ip route show` to retrieve this information.

### 3. Display Hard Disk Information
- Display the hard disk size, free space, and used space.
- Use the `df -h` command to gather and display this information.

### 4. Display Top Five Directories by Size
- Display the top five directories and their sizes.
- Use the `du -ah / | sort -rh | head -n 5` command to list the largest directories.

### 5. Display CPU Usage
- Display the CPU usage and refresh every 10 seconds.
- Use the `top` or `htop` command to monitor CPU usage with a refresh interval of 10 seconds.

