#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the names of the files in the sample-files directory whose name starts with an upper case letter.
# Your output should contain 10 files.

ls sample-files | grep '^[A-Z]'

# `ls sample-files` lists all filenames in the sample-files directory.
# The pipe `|` sends that list to `grep` for filtering.
# `grep '^[A-Z]'` matches lines that START with an uppercase letter.
# The `^` anchor means "beginning of the line", so `[A-Z]` must be the first character.
# This excludes `dHondt` (which has an uppercase letter but doesn't start with one),
# giving us 10 files instead of 11.
