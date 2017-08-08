#!/bin/bash

oldIFS=$IFS
IFS="	
"
mydir='/Applications/'
a='/'

for app in $(ls $mydir)
do
	if [[ $app =~ \.app$ ]]; 
	then
		app=${mydir}${app}
		echo $app
		open $app

	else
		echo 'this is a dir'
		for dirapp in $(ls ${mydir}${app})
		do
			open ${mydir}${app}${a}${dirapp}
		done
	fi
	#osascript -e 'quit app "${app}"'
done

IFS=$oldIFS