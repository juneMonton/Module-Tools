#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt with one fix:
# If a comma in input.txt is not followed by a space, add a space after.
# If there is already a space after a comma, do not add an additional space.
# The output should contain 11 lines.
# Line 3 should be "It contains many lines, and there are some things you may want to do with each of them.".
# Line 11 should be "We also should remember, when we go shopping, to get 4 items: oranges, cheese, bread, olives.".


#---------------answer--------------

sed 's/,\([^ ]\)/, \1/g' input.txt

# How it works:

# sed — stream editor that transforms text line by line
# , — matches a comma
# \([^ ]\) — captures any character that is not a space after the comma as group 1
# , \1 — replaces with a comma, a space, then group 1
# g — applies to all occurrences on each line