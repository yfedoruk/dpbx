#fix terminal bug. new tab in cwd
#. /etc/profile.d/vte.sh


if [ -f ~/.bash_completion ]; then
    . ~/.bash_completion
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ -f ~/bi/.aliases ]; then
    . ~/bi/.aliases
fi

if [ -f ~/.env ]; then
    . ~/.env
fi

if [ -f ~/.git-completion.bash  ]; then
      . ~/.git-completion.bash

  #add git completion to aliases
  __git_complete g __git_main
  __git_complete gk _git_checkout
  __git_complete gm _git_merge
  __git_complete gll _git_pull
  __git_complete ga _git_add
  __git_complete gd _git_diff
  __git_complete gdn _git_diff
fi

#devilspie &

fh() {
  eval $(history | fzf +s | sed 's/ *[0-9]* *//')

}

export FZF_DEFAULT_OPTS='
  --extended-exact
  --bind ctrl-f:page-down,ctrl-b:page-up
  --no-sort
'

#alias fzf='fzf --bind "enter:execute(less {})"'      # this breaks select on press Enter button
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fgk - checkout git branch
fgk() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

#FZF_DEFAULT_COMMAND="eval $(history | fzf +s | sed 's/ *[0-9]* *//')"
PGPASSWORD=gthcgtrnbdf
alias lock='i3lock -c000000'


if [ `pidof rofi`  ]; then
    rofi -key-run F3 -key-window F2 &
fi

#sudo mount -t ext4 /dev/sda /media/slava/d

