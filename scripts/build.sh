#!/bin/bash

for file in ./input/*.xml
do
  filename=$(basename "$file")

  if [ ! -f "target/"$filename".nt" ]
  then
    echo Processing $filename...
    java -jar lib/cli-0.0.9-SNAPSHOT-jar-with-dependencies.jar -i "input/"$filename -m config/cam53.ttl -of nt -o "target/"$filename".nt"

  else
    echo Found "target/"$filename".nt", skipping $file
  fi
done;