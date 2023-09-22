#!/bin/bash
set -e
. extensions.sh

if [ "$#" -eq 0  ]
then
    touch "main.cc"
else
    c_create "$1"
    #js_create "$1"
    #touch "$1.cc"
fi
