#!/bin/bash

dir=$1

fswatch -0 $dir | xargs -0 -n 1 echo 
