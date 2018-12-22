#!/bin/bash
# Create a simple context for building independent web apps


# Variables
export PATH=~/Rest:$PATH


# Banner
figlet 'Rest Hammer'


# Alias
alias edit="brackets ."
alias rc='. ~/Rest/bashrc'
alias run='open /Applications/Google\ Chrome.app/ http://localhost:8000/; djr runserver'
alias status='git status'
alias dump='djr dumpdata sensei|python -m json.tool > library_project/sesei.json'


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

