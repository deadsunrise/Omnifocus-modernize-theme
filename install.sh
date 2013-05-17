#!/bin/bash

APP="/Applications" # Directory where OmniFocus is stored

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d $APP/OmniFocus.app/ ];
then
	printf "\nOmniFocus.app was not found in the $APP directory.\n"
else

	printf "\nMaking a backup of OmniFocus to $APP/OmniFocus-backup.app\n"
	cp -rf $APP/OmniFocus.app $APP/OmniFocus-backup.app

	printf "Copying the new resources \n"

	# The first directory is that from the original script; the second is the one that worked for me. ^AWLC
	cp -f $DIR/OmniFocusInterface/* $APP/OmniFocus.app/Contents/Frameworks/OmniFocusInterface.framework/Versions/Current/Resources
	cp -f $DIR/OmniFocusInterface/* $APP/OmniFocus.app/Contents/Frameworks/OmniFocusInterface.framework/Resources

	cp -f $DIR/Resources/* $APP/OmniFocus.app/Contents/Resources
	cp -f $DIR/OOview/* $APP/OmniFocus.app/Contents/Frameworks/OOView.framework/Resources
	cp -f $DIR/OmniStyle/* $APP/OmniFocus.app/Contents/Frameworks/OmniStyle.framework/Versions/A/Resources/LeafHandle.pdf

	printf "Applying the theme 'omnifocus2.ofocus-theme'. Click 'Replace' and restart OmniFocus.\n\n"
	sleep 2
	open $DIR/omnifocus2.ofocus-theme
fi