#!/bin/bash

set -euo pipefail

# The input for this script is the scores-table.txt file.
# TODO: Write a command to output scores-table.txt, with lines sorted by the person's first score, descending.
# The first line of your output should be "Basia London 22 9 6" (with no quotes).

sort -k3 -n -r scores-table.txt

# `sort` sorts the lines of the file.
# `-k3` tells sort to use the 3rd field (the first score) as the sort key.
# `-n` sorts numerically instead of alphabetically (so 22 comes before 3).
# `-r` reverses the order to sort in descending order (highest first).
# The result is "Basia London 22 9 6" on the first line since 22 is the highest first score.
