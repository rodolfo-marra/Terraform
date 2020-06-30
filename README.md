All examples from Terraform Training

CONFIGURING GIT FOR THE FIRST TIME

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


CLONING REPO FROM GITHUB

1- 
