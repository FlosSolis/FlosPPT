#!/bin/bash
# author: Haohahahaha (Haorui Zhang)
# email: 1259203802@qq.com
# date: 2023-11-19

FILE_PATH=`pwd`

# environment variable
# JYYSLIDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT/jyyslide-md
# MYSLIDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT
SHELL_CONF=zshrc

# install jyyslide-md
sudo apt install python3
sudo apt install python3-pip
# python3 -m pip install poetry
# git clone https://github.com/zweix123/jyyslide-md.git
# (cd jyyslide-md && python3 -m poetry install)

# configure environment variables
echo "
export JYYSLIDE_HOME=$FILEPATH/jyyslide-md
export MYSLIDE_HOME=$FILEPATH
export MYSLIDE_SCRIPT=\$MYSLIDE_HOME/scripts
alias mp=\"python3 -m poetry run python \$JYYSLIDE_HOME/main.py \" 
alias pptnew=\"\$MYSLIDE_SCRIPT/new.sh \$1\"
alias pptgen=\"\$MYSLIDE_SCRIPT/gen.sh \$1\"
alias pptopen=\"\$MYSLIDE_SCRIPT/open.sh \$1\"
" >> ~/.$SHELL_CONF
source ~/.$SHELL_CONF

# read some variables
REMOTE_NAME=$(cat $MYSLIDE_SCRIPT/remote_name.txt)
GITHUB_REMOTE=$(cat $MYSLIDE_SCRIPT/github_remote.txt)
USER_EMAIL=$(cat $MYSLIDE_SCRIPT/user_email.txt)
USER_NAME=$(cat $MYSLIDE_SCRIPT/user_name.txt)

# new gitignore file
touch .gitignore
echo "jyyslide-md" >> .gitignore

# new folder
mkdir -p $MYSLIDE_HOME/docs
mkdir -p $MYSLIDE_HOME/pages

# git init
git init
git config --global user.email "$USER_EMAIL"
git config --global user.name "$USER_NAME"
git add remote $REMOTE_NAME $GITHUB_REMOTE
