#!/bin/bash
# Create a simple context for building independent web apps

export PATH=~/Rest:$PATH


figlet 'Rest Hammer'

function djr {
    cd ~/Rest
    python manage.py $*
}

function status {
    git status
}

function commit {
    git add . && git commit -m "$*" && git pull && git push
}

alias rc='. ~/Rest/bashrc'


. $p/bin/bash-prompt

cd /Users/seaman/Rest

echo Files:
ls 

echo
echo "Active python = `which python`"
echo

