#!/bin/bash
# author: Haohahahaha (Haorui Zhang)
# email: 1259203802@qq.com
# date: 2023-11-19

# environment variables
# JYYSILDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT/jyyslide-md
# MYSLIDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT

SOURCE=$MYSLIDE_HOME/docs/$1
TARGET=$MYSLIDE_HOME/pages/$1
GEN=$JYYSLIDE_HOME/example/$1
GEN_FILE=$GEN/dist/*

# copy source file to working path
mkdir $GEN
cp -r $SOURCE/* $GEN

# generate slides by jyyslide-md
(cd $JYYSLIDE_HOME/examples/$1 && python3 -m poetry run python $JYYSLIDE_HOME/main.py $1.md)

# new target folder
mkdir -p $TARGET

# copy the results to TARGET folder
cp -r $GEN_FILE $TARGET

# write new directory entry to README
echo $'\n### ['$1'](./pages/'$1'/index.html)' >> $MYSLIDE_HOME/README.md


# submit to Github
bash $MYSLIDE_SCRIPT/auto-update-this-repo.sh
