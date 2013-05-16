#!/bin/bash -x 

echo 'Making a backup of omnifocus in case you want to undo the changes'
cp -R /Applications/OmniFocus.app /Applications/OmniFocus-backup.app

echo 'Copying the new resources'
cp -f OmniFocusInterface/* /Applications/OmniFocus.app/Contents/Frameworks/OmniFocusInterface.framework/Versions/Current/Resources
cp -f Resources/* /Applications/OmniFocus.app/Contents/Resources/
cp -f OOview/* /Applications/OmniFocus.app/Contents/Frameworks/OOView.framework/Resources
cp -f OmniStyle/* /Applications/OmniFocus.app/Contents/Frameworks/OmniStyle.framework/Versions/A/Resources/LeafHandle.pdf
echo 'Done'

echo 'Don't forget to restart omnifocus and apply the theme'