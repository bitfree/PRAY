#!/bin/bash

# place the script in the dir where filenames need to be added to the .txt file
# use mv to change to original filename if needed: mv $filename.new $filename

for filename in $(ls *.rst)
do
	sed "1s/^/${filename} \n\r/" ${filename} > $filename.new 
	mv ${filename}.new $filename
	echo Done ${filename} 
done
