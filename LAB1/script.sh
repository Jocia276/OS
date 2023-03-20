filename=$1
year=$2

#verifica daca este fisier
if [ -f $filename ]; then

	#verifica daca variabila year este formata din 4 caractere;
	#in caz contrar, se va redirecta la stderr mesajul "parametru invalid"
	if [ ${#year} != 4 ]; then
		echo "parametru invalid" >&2
		exit 1
	fi

	IFS=$'\n'
	for line in $(cat $filename);do
		nume=$(echo "$line" | cut -d ";" -f 1)
		an=$(echo "$line" | cut -d ";" -f 4)
		if [ $an -ge $year ]; then
			echo $nume
		fi
	done | sort 
else 
	echo "parametru invalid" >&2
fi