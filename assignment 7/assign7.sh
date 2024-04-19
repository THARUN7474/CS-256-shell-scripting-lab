#!/bin/bash

# more - Display contents of a file one screen at a time
echo "Displaying contents of file.txt using 'more' command:"
more file.txt

# nl - Number lines of files
echo "Numbering lines of file.txt using 'nl' command:"
nl file.txt

# nice - Run a command with modified scheduling priority
echo "Running 'nice' command to execute 'ls' with adjusted priority:"
nice -n 10 ls

# # passwd - Change user password
# echo "Changing user password with 'passwd' command:"
# passwd

# --commented out coz it will try to change password everytime so 



# pr - Format file for printing
echo "Formatting file.txt for printing using 'pr' command:"
pr file.txt

# rlogin - Remote login
echo "Starting remote login session using 'rlogin' command:"
rlogin remote_host

# rcp - Copy files between hosts
echo "Copying file.txt from remote_host to local machine using 'rcp' command:"
rcp remote_host:file.txt .

# rsh - Remote shell
echo "Executing remote command on remote_host using 'rsh' command:"
rsh remote_host "ls -l"

# talk - Talk to another user
echo "Starting a talk session with another_user:"
talk another_user

# telnet - User interface to the TELNET protocol
echo "Starting telnet session to remote_host:"
telnet remote_host

# tput - Initialize a terminal or query terminfo database
echo "Querying terminal capability using 'tput' command:"
tput cols

# tty - Print the file name of the terminal connected to standard input
echo "Printing terminal file name using 'tty' command:"
tty

# uname - Print system information
echo "Printing system information using 'uname' command:"
uname -a

# wc - Print newline, word, and byte counts for each file
echo "Counting lines, words, and bytes in file.txt using 'wc' command:"
wc file.txt

# who - Show who is logged on
echo "Displaying who is logged on using 'who' command:"
who

# write - Send a message to another user
echo "Sending a message to another_user using 'write' command:"
write another_user