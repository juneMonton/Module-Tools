#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt with numbers removed.
# The output should contain 11 lines.
# Line 6 of the output should be " Alisha".

#---------------answer--------------

sed 's/[0-9]//g' input.txt

# How it works:

# s/[0-9]//g — the substitution command:

# [0-9] — matches any digit (0 through 9)
# `` — replaces with nothing (deletes it)
# g — removes all occurrences on each line