## CONFIGURING GIT FOR THE FIRST TIME

1- Open a terminal/shell and type:

    $ git config --global user.name "Your name here"
    $ git config --global user.email "your_email@example.com"
    $ git config --global color.ui true

2- Look to see if you have files ~/.ssh/id_rsa and ~/.ssh/id_rsa.pub.

If not, create such public/private keys: Open a terminal/shell and type:

    $ ssh-keygen -t rsa -C "your_email@example.com"

3- Copy your public key (the contents of the newly-created id_rsa.pub file) into your clipboard.

4- Paste your ssh public key into your github account settings.

    Go to your github Account Settings
    
    Click “SSH Keys” on the left.
    
    Click “Add SSH Key” on the right.
    
    Add a label (like “My laptop”) and paste the public key into the big text box.
    
    In a terminal/shell, type the following to test it:
    
        $ ssh -T git@github.com
        
    If it says something like the following, it worked:
    
        Hi username! You've successfully authenticated, but Github does not provide shell access.

## CLONE REPO FROM GITHUB

To grab a complete copy of another user's repository, use git clone like this:
    
    HTTPS:  $ git clone https://github.com/USERNAME/REPOSITORY.git

    SSH:    $ git clone git@github.com:USERNAME/REPOSITORY.git

You can choose from several different URLs when cloning a repository. While logged in to GitHub, these URLs are available below the repository details.

![Repository details](https://help.github.com/assets/images/help/repository/remotes-url.png)

When you run git clone, the following actions occur:

    - A new folder called repo is made

    - It is initialized as a Git repository

    - A remote named origin is created, pointing to the URL you cloned from

    - All of the repository's files and commits are downloaded there

    - The default branch (usually called master) is checked out

## FETCHING CHANGES FROM A REMOTE REPOSITORY

Use git fetch to retrieve new work done by other people. Fetching from a repository grabs all the new remote-tracking branches and tags without merging those changes into your own branches.

If you already have a local repository with a remote URL set up for the desired project, you can grab all the new information by using git fetch *remotename* in the terminal:

    $ git fetch remotename

## MERGING CHANGES INTO YOUR LOCAL BRANCH

Merging combines your local changes with changes made by others.

Typically, you'd merge a remote-tracking branch (i.e., a branch fetched from a remote repository) with your local branch:

    $ git merge remotename/branchname

## PULLING CHANGES FROM A REMOTE REPOSITORY

git pull is a convenient shortcut for completing both git fetch and git merge in the same command:

    git pull remotename branchname

Because pull performs a merge on the retrieved changes, you should ensure that your local work is committed before running the pull command. If you run into a merge conflict you cannot resolve, or if you decide to quit the merge, you can use git merge --abort to take the branch back to where it was in before you pulled.