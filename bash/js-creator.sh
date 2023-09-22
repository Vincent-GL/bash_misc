#!/bin/bash
set -e 
mkdir "$1"
cd "$1"
touch "$1".js
echo "what are the arguments ?"
read arguments
echo "function $1($arguments)" >> "$1".js
echo -e "{\n}" >> "$1".js
echo -e "\nmodule.exports = {\n$1\n}" >> "$1".js
echo "generate jest testsuite ? y/n"
read answer
  case "$answer" in
    "y")
        touch "$1".test.js
        echo "const {$1} = require('./$1')" >> "$1".test.js
        echo -e "test(\"$1 example\", () => {\n expect($1($arguments)).toBe(2);\n});"  >> "$1".test.js
        ;;
     "n")
        echo "no file was added"
        ;;
       *)
        echo "invalid option"
        ;;
    esac
