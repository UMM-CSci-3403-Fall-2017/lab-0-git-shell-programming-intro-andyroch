#!/usr/bin/bash

home_dir=$(pwd) #assigning name to main directory
tar_files=$1 #assigning name to compressed tar archive
name="${tar_files%.*}" #exctracting name without the extension from the tar archive file

tar -zxf $1 -C $2 #extracting the tar archive files and putting in the scratch directory
cd $2/$name #going to the scratch directory 

rm $(grep -lr "DELETE ME!" *) #removing all files that has the 'DELETE ME!' pattern
cd .. 

here=$(pwd) #saving the scratch directory path

tar -czf cleaned_$name.tgz $name #creating new compressed tar archive 
mv $here/cleaned_$name.tgz $home_dir #moving files to new tar archive

cd $home_dir
