#!/bin/bash
#
# Create gitlab project
# Author: Hendrik Legge <hendrik.legge@themepoint.de> <https://github.com/ShopbaseDE>

if [ -z "$1" ]; then
	echo "Gitlab user required";
	exit
fi

if [ -z "$2" ]; then
	echo "Gitlab project required";
	exit
fi

git init
git remote add origin https://gitlab.com/$1/$2.git
git add .
git commit -m "Initial commit"
git push -u origin master
