#!/bin/bash

for i in buildings/* garage-research/* academy-research/*
do
  echo $i
  ./bin/reader.py $i > /dev/null
  result=$?
  echo "result: ${result}"
  if [[ $result} == 1 ]]
  then
    echo "Error processing file $i"
    exit 1
  fi
done

# success
exit 0
