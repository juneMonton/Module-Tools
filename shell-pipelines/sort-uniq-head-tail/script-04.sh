#!/bin/bash

set -euo pipefail

# The input for this script is the scores-table.txt file.
# TODO: Write a command to output scores-table.txt, with shows the line for the player whose first score was the second highest.
# Your output should be: "Piotr Glasgow 15 2 25 11 8" (without quotes).

sort -k3 -n -r scores-table.txt | head -2 | tail -1

# `sort -k3 -n -r scores-table.txt` sorts by the 3rd field (first score),
# numerically and in descending order.
# `head -2` takes the top 2 lines (the two highest first scores).
# `tail -1` takes only the last line from those 2, which is the second highest.
# This gives us "Piotr Glasgow 15 2 25 11 8" (first score of 15, second highest).
