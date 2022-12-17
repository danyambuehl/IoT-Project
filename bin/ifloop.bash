
DIRECTORYTOLIST=/tmp # this is the default

if [ $# -ge 1 ]
then
    if [ -d "$1" ] 
    then
        DIRECTORYTOLIST=$1
    else
        echo "Directory $1 not found."
        exit 52
    fi
fi
shift 

ls $DIRECTORYTOLIST
