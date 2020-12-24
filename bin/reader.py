#!/usr/bin/env python
import sys
from os import path
import yaml
import toml
import pathlib

def main():
  file_name = sys.argv[1]

  if not path.exists(file_name):
    print("Invalid filename provided: %s" % (file_name))
    sys.exit(1)

  print( "Working on file: %s" % (file_name))
  ext =  pathlib.Path(file_name).suffix

  with open(file_name) as fp:

    if ext == ".yml":
      # yaml load
      contents = yaml.load(fp, Loader=yaml.FullLoader)
    elif ext == ".toml":
      # toml file
      contents = toml.load( file_name )
    else:
      # standard read
      contents = fp.read()

  print( contents )

if __name__== "__main__":
   main()
