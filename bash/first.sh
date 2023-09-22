#!/bin/bash
set -e
if which apt 
then sudo apt -y update
else
  if which pacman
  then sudo yay -y
  fi
fi
