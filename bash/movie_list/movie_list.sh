#!/bin/bash
set -e
 
if [ ! -f movie_list.txt ]; then
    echo "File not found!"
    touch "movie_list.txt"
    echo "Creating file"
    echo "..."
    echo "done !"
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
else if [ "$option" = "remove movie" ]; then
    echo "what movie do you want to delete ?"
    read delete_entry
    sed -i "/$delete_entry/d" movie_list.txt
fi
fi
echo "current movie list is :"
cat movie_list.txt
