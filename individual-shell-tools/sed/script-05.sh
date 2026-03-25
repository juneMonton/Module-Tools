#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt with one change:
# If a line starts with a number and a space, make the line instead end with a space and the number.
# So line 6 which currently reads "37 Alisha" should instead read "Alisha 37".
# The output should contain 11 lines.


#---------------answer--------------

sed 's/^\([0-9]*\) \(.*\)/\2 \1/' input.txt

# How it works:

# sed — stream editor that transforms text line by line
# ^ — matches the start of the line
# \([0-9]*\) — captures the number as group 1
#   — matches the space between number and name
# \(.*\) — captures the rest of the line as group 2
# \2 \1 — prints group 2 (name) first, then group 1 (number), swapping them