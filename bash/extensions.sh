#!/bin/bash

set -e
js_create()
{
  touch "$1".js
  echo "function example(a,b){ return a > b}" >> "$1".js
}

c_create()
{
  touch "$1".c
  echo "int main(void){ return 0;}" >> "$1".c
  echo "create header file ? y/n"
  read answer
  case "$answer" in
    "y")
        echo "this feature wasn't implemented"
        ;;
    "n")
        echo "no file was added"
        ;;
    case *)
        echo "invalid option"
  esac
}

cpp_create()
{
  touch "$1".cc
  echo "int main(void){ return 0;}" >> "$1".c
  echo "create header file ? y/n"
  read answer
  case "$answer" in
    "y")
        echo "this feature wasn't implemented"
        ;;
    "n")
        echo "no file was added"
        ;;
    case *)
        echo "invalid option"
  echo "create hxx file ? y/n"
  read answer
  case "$answer" in
    "y")
        echo "this feature wasn't implemented"
        ;;
    "n")
        echo "no file was added"
        ;;
    case *)
        echo "invalid option"
  esac
}