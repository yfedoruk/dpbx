#How do I make git ignore mode changes (chmod)?
# man git config (/color.diff.*slot)

# --global options will be saved in ~/.gitconfig
# git config remote.origin.url git@github.com:oberig/vacsapi.git
# git remote add origin git@github.com:yfedoruck/chat.git
# git push -u origin master

                      ######### COMMITS #################
# Viewing Unpushed Git Commits
    git diff origin/master..HEAD
    git log origin/master..HEAD
    git diff-tree --no-commit-id --name-only -r bd61ad98                     #(last from log)

#remove directory (file) from COMMIT:
    git rm --cached -r directory-name
    git rm --cached file-name

#edit last commit message
git commit --amend -m "New commit message"

#cherry-pick `commit-hash` to current branch
git cherry-pick <commit-hash>

                                                            ######### UNDO ############
# last commit
git reset --soft HEAD^
... edit ...
git add ....
git commit -c ORIG_HEAD

#restore to last commit
    git checkout HEAD file/to/restore.txt

    # RESTORE to 'abcde' commit
    git checkout abcde file/to/restore

    # !to discard changes in working directory!
    git checkout -- file.txt

# Undo 'git add' before commit
    git reset HEAD some_file
    git reset --hard HEAD
    #To undo 'git add .' use 'git reset'


# github without passwords
# https://help.github.com/articles/using-ssh-agent-forwarding
  git remote set-url origin git@github.com:oberig/vac.git  #vi .git/config => url = ssh://git@github.com/oberig/vac.git
  git config remote.origin.url git@github.com:oberig/vac.git


# How to ignore new files or changed files in INDEX
        git update-index --assume-unchanged <file>
    # To revert that ignorance use the following command:
        git update-index --no-assume-unchanged <file>



git push origin master --force  ### force push, override remote branch




# Undo a whole Git merge? (after pull)
    git reset --hard commit_sha
    # push after RESET --HARD :
    git push -f origin master #(--force)

#view logs
 git reflog
#merging
 git mergetool

#fetch
git fetch origin


# VIEW DIFS!!!
git log HEAD..origin/master


#How do you get git to always pull from a specific branch? (vi .git/config)
$ git config branch.master.remote origin
$ git config branch.master.merge refs/heads/master


# force update on pull.  undo all local changes
git reset --hard HEAD
git pull

################################# BRANCHES #############################

#rebase
git rebase origin/master


#Create the branch on your local machine :
    $ git branch <name_of_your_new_branch>
#Push the branch on github :
    $ git push origin <name_of_your_new_branch>
#Switch to your new branch :
    $ git checkout <name_of_your_new_branch>


# diff between branches
git diff --name-status master dev
# compare the tips of each branch.
git diff branch1..branch2

git checkout master   # switch to master
git merge bug1        # merging with bug1
git branch -d bug1    # delete bug1 branch
git push origin :bug1 # delete bug1 on remote server (github)


git branch -m <oldname> <newname> # rename branch
git branch -m <newname> #If you want to rename the current branch


################################# CONFLICTS ######
git checkout --theirs -- path/to/conflicted-file.txt
git checkout --ours -- path/to/conflicted-file.txt
git merge -X theirs branchB #from branchA
git pull -Xtheirs


######### VIEW ###########
 git diff --name-only
#ignore whitespace
 git diff -w
 git diff --ignore-space-at-eol #only whitespace at end file

# file log history
git blame css/style.css | grep #postPopup
#search SomeWord history
git grep SomeWord

git diff --stat origin/fullcalendar
git show | grep 'git'



#### gitolite. List of removed repositories ###
ssh git@git.xxx.com info


# clean untraced new files

#see what would be removed
git clean -n dirname/
