#!/bin/bash
extension="${1##*.}"
file=$(realpath "${1}")
filename="${file%.*}"

echo ${filename}
if [ ! -f "${file}" ]; then
  echo "File does not exist"
  exit 1;
fi

if [ "${extension}" != "xlsx" ]; then
  echo "Not an xlsx file"
  exit 1
fi
/opt/data-integration/pan.sh -file=xlsx2csv.ktr -param:spreadsheet="${filename}"
