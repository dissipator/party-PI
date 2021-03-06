#!/bin/bash

get_songs() {
	url=$("echo $1| cut -f1 -d*")
	name=$("echo $1|cut -f2 -d*")
	
	echo "downloading url $url"
	
	if [ "${url//youtube}" != "$url" ]; then
		title=$(./youtube-titlev.sh $url)
		
		youtube-dl --restrict-filenames -o './input/%(id)s.%(ext)s' "$url"
		
		filename="$(ls -u ./input/ |head -n1)"
		
		if [ -n "$filename" ]; then
			id="${filename%'.'*}"
			./youtube-thumb.sh "$url" "$name-$title"
			mv "./input/$filename" "./output/$name-$title"
		fi
	fi
}

while [ 1 ]
do
	url=$(curl -s $1/get.php)
	get_songs $url
	sleep 5
done
