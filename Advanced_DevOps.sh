#!/bin/bash
# Script outputs the node health

set -x #---debug mode
set -e #--- exit the script when there is an error
set -o #--- pipefail


df -h

free -g

nproc

ps -ef | grep "amazon" | awk -F" " '{print $2}'  # -ef display the process in full format

# Interview question: what will this below cmd give the output
# date | echo "Today is"
# Ans: Today is   
# Why? because date cmd sends the output to "stdin"  [we have stdin, stdout, stderr]

curl www.google.com | grep error

sudo find / -name <file_name>

# anybody trying to interupt the execution it will rm the entire file which was executed 
Trap "rm -r *" SIGINT 