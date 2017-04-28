# git config --global user.name "yfedoruck"
# git config --global user.email yfedoruck@gmail.com
git config --global user.name "Fedoruk Yaroslav"
git config --global user.email y.fedoruk@favbet.com

git config --global core.pager 'less -+$LESS -R' #exit from `pager`
git config --global pager.diff true #or git --no-pager diff


git config --global core.mergeoptions --no-edit
git config --global push.default current
git config --global pull.default current # must set before: git branch -u origin/branch_name

git config core.filemode false
git config alias.checkout co
git config alias.status stat
git config color.diff.old red bold
git config color.diff.new green bold
git config color.diff auto
git config color.branch.local yellow
git config color.branch.remote green
git config color.status.added yellow
git config color.status.changed green
git config color.status.untracked cyan
git config color.diff.old red bold
git config color.diff.meta yellow bold
git config color.diff.frag cyan bold

git config --global color.ui true
git config --global color.ui auto
git config --global merge.tool meld

# git remote -v
# git remote set-url origin git@github.com:USERNAME/OTHERREPOSITORY.git
