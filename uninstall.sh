#!/bin/bash

APP="/Applications" # Directory where OmniFocus is stored

if [ ! -d $APP/OmniFocus-backup.app/ ];
then
	printf "\nOmniFocus-backup.app was not found in the $APP directory.\n"
else
	printf "\nRestoring the original copy of OmniFocus.\n"
	mv $APP/Omnifocus-backup.app $APP/Omnifocus.app
fi