if [ -z "$1" ] || [ -z "$2" ]
then
    echo "Parameter not specified"
    exit 1
fi

FILE="$1"
STR="$2"

DIR=$(dirname $FILE)

if [ ! -d "$DIR" ]
then
    mkdir -p "$DIR"
fi

echo "$STR" > "$FILE"

if [ $? -ne 0 ]
then
    echo "Error: file not created"
    exit 1
fi