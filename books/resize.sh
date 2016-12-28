#!/usr/bin/env bash

max_height=200

parallel 'f={}; [ $(identify $f | grep -Eo "[0-9]+x[0-9]+" | head -n 1 | cut -d x -f 2) -gt '$max_height' ] && convert $f -verbose -resize x'$max_height' $f' ::: *.jpg
