#!/bin/sh

echo "Options:"
echo "1. Install modules."
echo "2. Update modules."
read -p "Choose an option: " Action

if [ "$Action" = "1" ]; then
    git submodule init
    git submodule update
elif [ "$Action" = "2" ]; then
    git submodule update --remote
else
    echo "Undefined option number."
    exit 1
fi
