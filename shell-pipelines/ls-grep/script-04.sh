#!/bin/bash

set -euo pipefail

# TODO: Write a command to count the number of files in the sample-files directory whose name starts with an upper case letter and doesn't contain any other upper case letters.
# Your output should be the number 7.

ls sample-files | grep '^[A-Z][^A-Z]*$' | wc -l

# `ls sample-files` lists all filenames in the sample-files directory.
# `grep '^[A-Z][^A-Z]*$'` filters for names that start with one uppercase letter
# and contain no other uppercase letters after that.
# `wc -l` counts the number of lines in the output, giving us the total count.
# The result is 7.
