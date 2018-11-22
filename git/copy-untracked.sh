#!/bin/sh
 
# USAGE: copy-untracked.sh FROM TO
git -C "$1" ls-files -oz --directory | xargs -0 -I{} -n1 cp -r "$1/{}" "$2/{}"