#!/bin/bash

# $1: template name
# $2: target filename
# $3: target folder
curr_folder=$(dirname $0)
if [ ! -e $curr_folder/$1 ]; then
	echo "No template named $1, the avaiable templates are " 
	ls -d $curr_folder/*/ | rev | cut -d'/' -f2 | rev
else
	cp $curr_folder/$1/*.tex $3/$2.tex
	if [ ! -e $3/Makefile ]; then
		cp $curr_folder/$1/Makefile $3/
		# convert dos format to unix format
		sed -i "s/\r//" $3/Makefile
		sed -i "1s/.*/FILE = '$2'/" $3/Makefile 
	fi
	if ls $curr_folder/$1/*.bib &>/dev/null; then
		cp $curr_folder/$1/*.bib $3/
	fi	
fi

