filename=$1;
caracter=$2;

if  [ ! -f $filename ]; then
	echo "parametru invalid" >&2
	exit 1
fi

if [[ ! "$caracter" =~ ^.$ ]]; then
  echo "parametru invalid" >&2
  exit 1
fi


sed -i "s/;/"$caracter"/g" $filename