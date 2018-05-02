#!/bin/bash

# creates a properly formatted site folder  on your desktop and then puts you in it in vim
# set alias as     ns [new directory name]

cd ~/Coding/bash_scripts
mkdir $1
cp -R site-template/ $1
mv $1 ~/Sites


# cp -R site-template $1
# cp -R $1 ~/Coding
# rm -R $1
cd ~/Sites/$1
echo "# $1" >> README.md
git init
git add .
git commit -m "first commit"
osascript -e 'tell application "Terminal" to activate' -e 'tell application "System Events" to tell process "Terminal" to keystroke "t" using command down' 

vim -p scss/main.scss -c "vs index.html" -c "tabedit js/script.js" -c "tabedit ~/Coding/coding-resources/coding-notes/css-notes.txt" \
    -c "vs ~/Coding/coding-resources/coding-notes/sass-notes.txt" -c "tabedit ~/Coding/coding-resources/coding-notes/vimtutor-abriged.txt" -c "mksession" -c "tabfirst"


