#!/bin/bash
# Create a simple context for building independent web apps


# Variables
export PATH=~/Rest:$PATH


# Banner
figlet 'Rest Hammer'


# Alias
alias edit="brackets ."
alias rc='. ~/Rest/bashrc'
alias run='djr runserver & open /Applications/Google\ Chrome.app/http://localhost:8000/'
alias status='git status'


# Function
function djr {
    cd ~/Rest
    python manage.py $*
}
function commit {
    git add . && git commit -m "$*" && git pull && git push
}


# Prompt
. $p/bin/bash-prompt


# Directory
cd /Users/seaman/Rest

echo Files:
ls 


# Python
echo
echo "Active python = `which python`"
echo

