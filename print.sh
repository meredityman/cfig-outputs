#!/bin/bash

num=$1
if [ "$num" == "" ] || [ $# -gt 1 ]; then
    echo "Name a group (gid)!"
    exit 1
fi

path=outputs/docs_$num/photos.pdf
ls "$path" && \
echo "Printing $path" && \
./print_photos.sh "$path"