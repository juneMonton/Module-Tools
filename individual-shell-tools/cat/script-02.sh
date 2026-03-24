#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the contents of all of the files inside the helper-files directory to the terminal.
# Make sure you are only calling `cat` once.
#
# The output of this command should be:
# Once upon a time...
# There was a house made of gingerbread.
# It looked delicious.
# I was tempted to take a bite of it.
# But this seemed like a bad idea...


cat ../helper-files/*

# * is a wildcard that matches all files inside the helper-files directory
# So cat helper-files/* expands to all files at once, letting you call cat just once
# cat then prints them all in alphabetical file order

