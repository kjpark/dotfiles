#!/bin/bash

# forked from
# https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh

# .make.sh
# Creates symlinks from the home directory to the files listed here

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
dot_files="bash_profile tmux.conf vimrc "     # files that need dots
not_files="git-prompt.sh git-completion.bash" # files that don't lol

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Backup existing dotfiles then create symlinks
for file in $dot_files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in ~/"
    ln -s $dir/$file ~/.$file
done

# my proud lil contribution for files that don't need dots!
# jk. rewrite this once you learn bash control flow // shame
for file in $not_files; do
    echo "Moving any existing notfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in ~/"
    ln -s $dir/$file ~/$file
done
