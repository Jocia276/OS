filename=$1;
gen=$2;

if  [ ! -f $filename ]; then
	echo "parametru invalid" >&2
	exit 1
fi


if [[ ! "$gen" =~ ^[a-zA-Z]+$ ]]; then
    echo "parametru invalid" >&2
    exit 1
fi

nrFilme=$(grep -c ";film;.*;$gen$" "$filename")
nrSeriale=$(grep -c ";serial;.*;$gen$" "$filename")

echo $nrFilme
echo $nrSeriale

