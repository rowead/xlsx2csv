#!/bin/bash
extension="${1##*.}"
file=$(realpath "${1}")
filename="${file%.*}"

if [ ! -f "${file}" ]; then
  echo "File does not exist"
  exit 1;
fi

if [ "${extension}" != "xlsx" ]; then
  echo "Not an xlsx file"
  exit 1
fi

# Get the directory that this script is in even if it was run from another directory
# (you've moved this into your $PATH for example). We still need to be able to find xlsx2csv.ktr to run.
# Original code from here: http://stackoverflow.com/a/246128
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
SOURCE_DIR=$(dirname ${SOURCE})

/opt/data-integration/pan.sh -file="${SOURCE_DIR}"/xlsx2csv.ktr -param:spreadsheet="${filename}"
