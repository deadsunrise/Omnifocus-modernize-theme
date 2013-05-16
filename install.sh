#!/bin/bash

echo '\n Making a backup of omnifocus in /Applications/OmniFocus-backup.app\n'

cp -rf /Applications/OmniFocus.app /Applications/OmniFocus-backup.app

echo ' Copying the new resources \n'

cp -f OmniFocusInterface/* /Applications/OmniFocus.app/Contents/Frameworks/OmniFocusInterface.framework/Versions/Current/Resources
cp -f Resources/* /Applications/OmniFocus.app/Contents/Resources/
cp -f OOview/* /Applications/OmniFocus.app/Contents/Frameworks/OOView.framework/Resources
cp -f OmniStyle/* /Applications/OmniFocus.app/Contents/Frameworks/OmniStyle.framework/Versions/A/Resources/LeafHandle.pdf

echo " Apply the theme 'omnifocus2.ofocus-theme' and restart omnifocus "


