#!/bin/bash

set -euo pipefail

# The input for this script is the scores-table.txt file.
# TODO: Write a command to output scores-table.txt, with shows the lines for the three players with the highest first score, in descending order.
# Your output should be:
# Basia London 22 9 6
# Piotr Glasgow 15 2 25 11 8
# Chandra Birmingham 12 6

sort -k3 -n -r scores-table.txt | head -3

# `sort -k3 -n -r scores-table.txt` sorts the file by the 3rd field (first score),
# numerically (`-n`) and in descending order (`-r`), so the highest scores come first.
# The pipe `|` sends the sorted output to `head`.
# `head -3` takes only the first 3 lines from the sorted output.
# This gives us the three players with the highest first score.
