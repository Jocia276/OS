filename=$1;
gen=$2;

if  [ ! -f $filename ]; then
	echo "parametru invalid" >&2
	exit 1
fi

if [[ $gen  =~ ^[a-zA-Z0-9]+$ ]];then


	nrFilme=$(grep -c "film.*$gen" $filename);
	nrSeriale=$(grep -c "serial.*$gen" $filename);

	if [ $nrFilme != 0 ]; then
		echo $nrFilme
	else
		echo $'\n'
	fi
	
	if [ $nrSeriale != 0 ]; then
		echo $nrSeriale
	fi
else 
	echo "parametru invalid" >&2
fi
