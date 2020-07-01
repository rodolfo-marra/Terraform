## Summary
#### [CONFIGURING GIT FOR THE FIRST TIME](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#configuring-git-for-the-first-time)
#### [CLONE REPO FROM GITHUB](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#clone-repo-from-github)
#### [CHANGE GIT AUTHENTICATION (HTTPS/SSH)](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#change-git-authentication-httpsssh)
#### [FETCHING CHANGES FROM A REMOTE REPOSITORY](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#fetching-changes-from-a-remote-repository)
#### [MERGING CHANGES INTO YOUR LOCAL BRANCH](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#merging-changes-into-your-local-branch)
#### [PULLING CHANGES FROM A REMOTE REPOSITORY](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#pulling-changes-from-a-remote-repository)
#### [CREATE LOCAL REPO AND PUSH TO REMOTE](https://github.com/rodolfo-marra/Terraform/blob/master/README.md#create-local-repo-and-push-to-remote)
##### Markdown examples: https://guides.github.com/features/mastering-markdown/

---

### CONFIGURING GIT FOR THE FIRST TIME

1. Open a terminal/shell and type:

    $ git config --global user.name "Your name here"
    $ git config --global user.email "your_email@example.com"
    $ git config --global color.ui true

1. Look to see if you have files ~/.ssh/id_rsa and ~/.ssh/id_rsa.pub.

If not, create such public/private keys: Open a terminal/shell and type:

    $ ssh-keygen -t rsa -C "your_email@example.com"

1. Copy your public key (the contents of the newly-created id_rsa.pub file) into your clipboard.

1. Paste your ssh public key into your github account settings.

    1. Go to your github Account Settings
    2. Click “SSH Keys” on the left.
    3. Click “Add SSH Key” on the right.
    4. Add a label (like “My laptop”) and paste the public key into the big text box.
    5. In a terminal/shell, type the following to test it:
    
        $ ssh -T git@github.com
        
    6. If it says something like the following, it worked:
    
        Hi username! You've successfully authenticated, but Github does not provide shell access.

### CLONE REPO FROM GITHUB

To grab a complete copy of another user's repository, use git clone like this:
    
    HTTPS:  $ git clone https://github.com/USERNAME/REPOSITORY.git

    SSH:    $ git clone git@github.com:USERNAME/REPOSITORY.git

You can choose from several different URLs when cloning a repository. While logged in to GitHub, these URLs are available below the repository details:
![Repository details](https://help.github.com/assets/images/help/repository/remotes-url.png)

When you run git clone, the following actions occur:

    * A new folder called repo is made
    * It is initialized as a Git repository
    * A remote named origin is created, pointing to the URL you cloned from
    * All of the repository's files and commits are downloaded there
    * The default branch (usually called master) is checked out

### CHANGE GIT AUTHENTICATION (HTTPS/SSH)

If you have cloned using HTTPS and want to use SSH (or vice-versa) you can run this command:

    SSH -> HTTPS: git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

    HTTPS -> SSH: git remote set-url origin git@github.com:USERNAME/REPOSITORY.git

*NOTE: VSCode works if your are using HTTPS authentication. When using SSH get error message Auth denied*

### FETCHING CHANGES FROM A REMOTE REPOSITORY

Use git fetch to retrieve new work done by other people. Fetching from a repository grabs all the new remote-tracking branches and tags without merging those changes into your own branches.

If you already have a local repository with a remote URL set up for the desired project, you can grab all the new information by using git fetch *remotename* in the terminal:

    $ git fetch remotename

### MERGING CHANGES INTO YOUR LOCAL BRANCH

Merging combines your local changes with changes made by others.

Typically, you'd merge a remote-tracking branch (i.e., a branch fetched from a remote repository) with your local branch:

    $ git merge remotename/branchname

### PULLING CHANGES FROM A REMOTE REPOSITORY

git pull is a convenient shortcut for completing both git fetch and git merge in the same command:

    $ git pull remotename branchname

Because pull performs a merge on the retrieved changes, you should ensure that your local work is committed before running the pull command. If you run into a merge conflict you cannot resolve, or if you decide to quit the merge, you can use git merge --abort to take the branch back to where it was in before you pulled.

### CREATE LOCAL REPO AND PUSH TO REMOTE

1. Open Git Bash.
2. Change the current working directory to your local project.
3. Initialize the local directory as a Git repository.
    
    >$ git init
    
4. Add the files in your new local repository. This stages them for the first commit.
    
    >$ git add .
    >_Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'._
    
    >$ git diff --cached --name-only --diff-filter=A
    >_List the added files which are not yet committed _
    
5. Commit the files that you've staged in your local repository.
    
    > $ git commit -m "First commit"
    > _Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again._
    
6. At the top of your GitHub repository's Quick Setup page, click to copy the remote repository URL.
7. In the Command prompt, add the URL for the remote repository where your local repository will be pushed.
    
    > $ git remote add origin https://github.com/USERNAME/REPOSITORY.git
    > _Sets the new remote_
    
    > $ git remote -v
    > _Verifies the new remote URL_
    
8. Push the changes in your local repository to GitHub.
    
    > $ git push origin master
    > _Pushes the changes in your local repository up to the remote repository you specified as the origin_
