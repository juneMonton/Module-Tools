#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the names of the files in the sample-files directory whose name starts with an upper case letter and doesn't contain any other upper case letters.
# Your output should contain 7 files.

ls sample-files | grep '^[A-Z][^A-Z]*$'

# `ls sample-files` lists all filenames in the sample-files directory.
# The pipe `|` sends that list to `grep` for filtering.
# `grep '^[A-Z][^A-Z]*$'` breaks down as:
#   `^`       - start of the line
#   `[A-Z]`   - the first character must be an uppercase letter
#   `[^A-Z]*` - followed by zero or more characters that are NOT uppercase letters
#   `$`       - end of the line
# This matches names like "Ariane" and "London" but excludes "NewYork" and "KualaLumpur"
# because they contain additional uppercase letters after the first one.
