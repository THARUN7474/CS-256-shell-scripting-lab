#!/bin/bash

# bc - Command-line calculator
echo "5 + 3" | bc

# comm - Compare two sorted files line by line
echo "Comm command output:"
echo "File 1:" > file1.txt
echo "apple" >> file1.txt
echo "banana" >> file1.txt
echo "File 2:" > file2.txt
echo "apple" >> file2.txt
echo "cherry" >> file2.txt
echo "Comm output:"
comm file1.txt file2.txt

# chown - Change file owner and group
touch test.txt
sudo chown root test.txt
sudo chgrp root test.txt

# cron - Schedule tasks to run at specific intervals
echo "Cron jobs:"
crontab -l

# dd - Convert and copy files
dd if=/dev/zero of=testfile bs=1M count=1

# diff - Compare files line by line
echo "Difference between two files:"
echo "File 1:" > file1.txt
echo "apple" >> file1.txt
echo "banana" >> file1.txt
echo "File 2:" > file2.txt
echo "apple" >> file2.txt
echo "cherry" >> file2.txt
diff file1.txt file2.txt

# finger - Display information about system users
finger $USER

# find - Search for files in a directory hierarchy
echo "Find command output:"
find . -name "*.txt"

# ftp - File Transfer Protocol client
echo "FTP is a separate protocol and cannot be demonstrated in a shell script."

# lock - Lock a file to prevent access
touch lockedfile.txt
chmod 000 lockedfile.txt

# ln - Create links between files
ln -s /path/to/sourcefile /path/to/destinationfile

# lp - Print files
echo "Printing file:"
echo "This is a test file for printing." > printfile.txt
lp printfile.txt

# lpstat - Print status information about the current print queue
lpstat -p

# mesg - Control terminal messages
mesg
