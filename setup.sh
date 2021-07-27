#!/bin/bash

# Required applications for dotfiles to work correctly.
REQS=(vim tmux xclip)
NEEDS_INSTALL=false

# Checks if the programs needed above are installed 
# Will exit the script if one of the programs are missing.
for PROG in ${REQS[@]} ; do
	if [ -z "$(which $PROG)" ] ; then
		echo "$PROG needs to be installed."
		NEEDS_INSTALL=true
	fi
done

if [ $NEEDS_INSTALL = true ] ; then 
	echo "Install required programs and run script again"
	exit 1
fi

# Items in the directory that need to be ignored.
EXCLUDE="scripts|setup.sh" 
CONF_FILES=$(ls . | grep -v -E $EXCLUDE)

# Remove existing dotfiles with the same name and replace them with links to 
# config files in this directory.
for FILE in $CONF_FILES ; do 
	rm $HOME/.$FILE	2> /dev/null
	ln -sf $PWD/$FILE $HOME/.$FILE
done

