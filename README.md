# xlsx2csv

Extracts styled text from xlsx into csv with html markup

This is an exercise in learning to handle XML with Pentaho and it's Metadata Injection Step.

Reads data directly from the XML files within the xlsx package (http://officeopenxml.com/anatomyofOOXML-xlsx.php).

Works with bold and italic text so far, more to come.

## Usage
There is a basic shell script for running the correct Pentaho transformation on an xlsx file.
```
./xlsx2csv.sh /path/to/file.xlsx
```
That or run xlsx2csv.ktr using spoon and set the spreadsheet parameter.

It will create a csv file next to the original xlsx.
## Requires
Working install of Pentaho PDI

Alter xlsx2csv.sh to point to pan.sh within Pentaho's installed directory.