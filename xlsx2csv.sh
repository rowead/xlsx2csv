#!/bin/bash
/opt/data-integration/pan.sh -file=xlsx2csv.ktr -param:spreadsheet='${Internal.Transformation.Filename.Directory}${file.separator}'${1}
