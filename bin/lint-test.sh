#!/bin/bash

# find any toml or yml files excluding the .github directory
#for i in $(find . -path ./.github/ -prune -o -name '*.toml' -o -name '*.yml')
for i in $(find . -name '*.toml' -o -name '*.yml')
do
  ./bin/reader.py $i > /dev/null
  result=$?

  echo "${result} :: ${i}"
  if [[ ${result} == 1 ]]
  then
    echo "Error loading data from file $i"
    echo "Review and retry: ./bin/reader.py $i"
    exit 1
  fi
done

# success
exit 0
