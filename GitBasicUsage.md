/Users/alala/Documents/Notes - make the current folder a git repository
>git init

>git status

" add all change
>git add .

" add a specific file, <>is file name
>git add <file>

>git commit

" show the change not be add
>git diff

" undo the add process
>git reset

" check the user name and email
> git config -user.name
> git config -user.email

" add user name
> git confic --global user.name "<name>"
> git confic --global user.email "<email>"

" add github account, add the following and then push something to input account and password
> git config credential.helper store

" config the default editor
> git config --global core.editor <EditorName>
" commit 
> git commit -m "<some comment>"

" will open a file, and add comment here
> git commit

" add and commit but will ignore new files which have never been tracked
> git commit -a
" not track one fole, open a file and add the file name which do not need track, this will not impact the file before adding to this .gitignore list.
> git .gitignore
" stop stracking a file
> git rm --cached <filename>

" create a new branch
> git branch <BranchName>

" change to a branch
> git checkout <BranchName>
> git checkout master

" merge branches to current branch
> git merge <BranchName>

" delete branc
> git branch -d <BranchName>

" force to delete (if not merge to other will let you save but you want to delete anyway
> git branch -D <BranchName>

" upload to github
> git remote add origin <address>
> (example) git remote add origin https://github.com/name/repositoryname

" push to remote
> push --set upstream origin master
" if already in the a repostory
> git put
" clone a repository to local
> git clone <address>
> (EX.) git clone https://github.com/name/repositoryname

" update the new from remote
> gitn pull

