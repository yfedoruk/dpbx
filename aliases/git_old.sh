#!/bin/bash

alias gls='git pull origin yfedoruck && git push origin yfedoruck'
alias gun='git update-index --assume-unchanged'
alias gunn='git update-index --no-assume-unchanged'
alias gmm='git merge master'
alias gkd='git checkout dev'
alias gmbase='git merge-base master `git rev-parse --abbrev-ref HEAD`'
#   alias gfd='git status --porcelain | grep -E "^(\?\?|(A|\s|M)M|R.*\s\->)\s" | sed "s/\(??\|\(A\|\s\|M\|M\)M\|R\.\*\s->\)\s//g" |  head -1 | xargs git diff'
alias grm-new='git status --porcelain | grep -E "^\?\?\s" | sed "s/\??\s//g" | xargs sudo rm -rf'
alias gkd='git checkout dev'