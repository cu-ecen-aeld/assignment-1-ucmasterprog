if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Parameter not specified"
    exit 1
fi

if [ ! -d "$1" ]
then
    echo "$1 Is not a directory"
    exit 1
fi

# Removendo os espaços aqui:
FILES=$(find "$1" -type f | wc -l)
MATCHES=$(grep -r "$2" "$1" | wc -l)

echo "The number of files are $FILES and the number of matching lines are $MATCHES"