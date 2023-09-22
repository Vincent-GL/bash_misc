#!/bin/bash
set -e
 
if [ ! -f movie_list.txt ]; then
    echo "File not found!"
    touch "movie_list.txt"
else
	echo "File found !"
fi

echo "what do you want to do ? add movie/remove movie"
read option
if [ "$option" = "add movie" ]; then
    echo "what movie do you want to add to the list ?"
    read new_entry
    echo "$new_entry" >> movie_list.txt
    echo "Le film '$new_entry' a été ajouté à la liste."
echo "current movie list is :"
cat movie_list.txt
fi
