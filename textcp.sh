#!/bin/bash

cat $1 | xclip -selection clipboard -i $f
echo "Copied to clipboard"
