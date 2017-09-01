#!/usr/bin/bash

home_dir=$(pwd)
tar_files=$1
name="${tar_files%.*}"

tar -zxf $1 -C $2
cd $2/$name
rm $(grep -l "DELETE ME!" *)
cd ..

here=$(pwd)

tar -czf cleaned_$name.tgz $name
mv $here/cleaned_$name.tgz $home_dir

cd $home_dir
