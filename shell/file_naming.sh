#!/bin/bash
cd $1
fswatch $1 | xargs -n1 -I{} auto_naming.sh
