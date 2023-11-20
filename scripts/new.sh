#!/bin/bash
# author: Haohahahaha (Haorui Zhang)
# email: 1259203802@qq.com
# date: 2023-11-19

# environment variables
# MYSLIDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT

SOURCE=$MYSLIDE_HOME/docs/$1
SOURCE_MD=$SOURCE/$1.md

# new source folder
mkdir -p $SOURCE

# new source image folder
mkdir -p $SOURCE/img

# new source markdown file
touch $SOURCE_MD

# open the markdown file by vim
vim $SOURCE_MD
