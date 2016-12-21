#!/bin/bash
cd $1
inotifywait -m $1 | xargs -n1 -I{} auto_naming.sh
