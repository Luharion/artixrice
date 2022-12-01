#!/bin/sh

# you need to install spotdl from your repo or from the github
command -v spotdl >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }

file = ~/Music/Music-list.txt
if [ -f "$file" ]; then

	read -d $'\x04' name < "$file"
	spotdl download $name
else
	touch "$file"
	echo "You need to add the spotify url for the playlist or song you want in ~/Music/Music-list.txt"
fi
