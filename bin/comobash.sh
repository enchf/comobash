#!/bin/bash

# Git aliases
alias glog="git log --all --graph --decorate --name-only"
alias gs="git status"
alias branchlog="git log --graph --abbrev-commit --name-only --decorate --first-parent"
alias gitscard="git clean -f -d && git reset --hard"

function giff() {
  git diff **/*.$1
}

function undogit() {
  git reset HEAD ./**/*.$1
  git reset HEAD *.$1
  git checkout ./**/*.$1
  git checkout *.$1
}

function gitadd() {
  git add **/*.$1
  git add *.$1

  if [ $# -eq 2 ]
  then
    git reset HEAD $2
  fi

  git status
}

# Utils for OS
function portpid() {
  netstat -vanp tcp | grep $1 | awk '{ print $9 }'
}

alias reloadsh='source $COMOBASH_TARGET'
alias showsh='cat $COMOBASH_TARGET'
alias editsh='nano $COMOBASH_SCRIPT'

# Programming languages
alias gr='sh gradlew'
