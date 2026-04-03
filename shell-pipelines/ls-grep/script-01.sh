#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the names of the files in the sample-files directory whose name contains at least one upper case letter.
# Your output should contain 11 files.

ls sample-files | grep '[A-Z]'

# This command pipes the output of `ls sample-files` into `grep`.
# `ls sample-files` lists all files in the sample-files directory.
# The pipe `|` sends that list to `grep`, which filters the lines.
# `grep '[A-Z]'` matches any line containing at least one uppercase letter (A-Z).
# The result is only filenames that have at least one uppercase character.
