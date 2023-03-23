filename=$1;
caracter=$2;

if  [ ! -f $filename ]; then
	echo "parametru invalid" >&2
	exit 1
fi

if [[ ! $caracter =~ ^[a-zA-Z0-9]+$ ]]; then
	if [ ${#caracter} != 1 ]; then
		echo "parametru invalid" >&2
	fi
else
	echo "parametru invalid" >&2
fi


sed -r "s/;/$caracter/g" $filename