#!/usr/bin/bash

tar -zxf $1 -C $2
cd $2/little_dir

grep -lr "DELETE ME!" | xargs -0 rm -f


