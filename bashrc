#!/bin/bash
# Create a simple context for building independent web apps


# Variables
export PATH=~/Rest:$PATH
export p=~/Rest


# Banner
figlet 'Rest Hammer'


# Alias
alias edit="brackets ."
alias rc='. ~/Rest/bashrc'
alias run='open /Applications/Google\ Chrome.app/ http://localhost:8000/; dj runserver'
alias gs='git status'
alias dump='djr dumpdata sensei|python -m json.tool > project/sesei.json'
unalias co

# Function
function dj {
    cd ~/Rest
    python manage.py $*
}

function co {
    git add . && git commit -m "$*" && git pull && git push
}


# Prompt
. ~/Projects/MyBook/bin/bash-prompt


# Directory
cd ~/Rest

echo Files:
ls 


# Python
echo
echo "Active python = `which python`"
echo


echo 'REST COMMANDS:
    co
    dj
    dump
    edit
    rc
    run
    gs'

