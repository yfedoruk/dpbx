#!/bin/bash

alias gf='git flow'
alias ghs='git flow hotfix start'
alias gfs='git flow feature start'
alias ghf='git flow hotfix finish'
alias gff='git flow feature finish'

hotfix() {
    git stash
    git checkout master
    git pull origin master
    git checkout develop
    git pull origin develop
    git flow hotfix start $1
    git stash pop
    git add --all :/
    git commit -m "$1"
    #git flow hotfix finish $1
}

gmtdev(){
    source_branch=`git symbolic-ref --short HEAD`
    git checkout dev
    git merge $source_branch
    git push origin dev
    git checkout $source_branch
}

gmtmaster(){
    source_branch=`git symbolic-ref --short HEAD`
    git checkout master
    git merge $source_branch
    git push origin master
    git checkout $source_branch
}