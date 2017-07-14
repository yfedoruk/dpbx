# git config --global user.name "yfedoruck"
# git config --global user.email yfedoruck@gmail.com
git config --global user.name "Fedoruk Yaroslav"
git config --global user.email y.fedoruk@favbet.com

git config --global core.pager 'less -+$LESS -R' #exit from `pager`
git config --global pager.diff true #or git --no-pager diff


git config --global core.mergeoptions --no-edit
git config --global push.default current
git config --global pull.default current # must set before: git branch -u origin/branch_name

git config --global core.filemode false
git config --global alias.checkout co
git config --global alias.status stat
git config --global color.diff.old red bold
git config --global color.diff.new green bold
git config --global color.diff auto
git config --global color.branch.local yellow
git config --global color.branch.remote green
git config --global color.status.added yellow
git config --global color.status.changed green
git config --global color.status.untracked cyan
git config --global color.diff.old red bold
git config --global color.diff.meta yellow bold
git config --global color.diff.frag cyan bold

git config --global color.ui true
git config --global color.ui auto
git config --global merge.tool meld

# git remote -v
# git remote set-url origin git@github.com:USERNAME/OTHERREPOSITORY.git
