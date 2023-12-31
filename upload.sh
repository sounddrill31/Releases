#!/bin/bash 

# set your git username and email once with git config --global user.name "yourusername", and fork https://github.com/Meghthedev/Releases to your github

# Run this script in the root of android directory

git config --global user.name "($gitusername)"
git config --global user.email "($gitemail)"
git clone "https://github.com/$(git config --get user.name)/Releases" 

# Copy all zip files to Releases Folder
find out/target/product/*/ -maxdepth 1 -type f -name "*.zip" -exec cp {} Releases/ \; 

# go to cd folder
cd Releases 

bash headless.sh
echo Uploaded! 

cd ..
rm -rf Releases
# credit to https://gist.github.com/Meghthedev/9c6e6ce1cb8c34ad7de428a9057f3e7c/raw/80fae90c103eaaf4fd7b639ecc2f055ab0797ceb/upload.sh
