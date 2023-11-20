#!/bin/bash
# author: Haohahahaha (Haorui Zhang)
# email: 1259203802@qq.com
# date: 2023-11-19

# environment variables
# MYSLIDE_HOME=/home/hanzhe/Documents/Repos/HaohahaPPT

SOURCE=$MYSLIDE_HOME/docs/$1

# open docs by vim
vim $SOURCE/$1.md
