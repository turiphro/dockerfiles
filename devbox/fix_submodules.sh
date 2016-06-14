#!/bin/bash

# After adding Vim config (containing git modules),
# call this script to fix and ignore the git part.

git rm --cached etc/.vim/bundle/*
git rm .gitmodules
rm -rf etc/.vim/bundle/*/.git
git add etc/.vim/bundle
