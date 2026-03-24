#!/bin/bash

set -euo pipefail

# NOTE: This is a stretch exercise - it is optional.

# TODO: Write a command to output the total of adding together all players' first scores.
# Your output should be exactly the number 54.


awk '{sum += $3} END {print sum}' scores-table.txt

# awk does two things:

# sum += $3 — goes line by line, continuously adding each player's first score ($3) to a running total
# END {print sum} — once all lines are done, prints the final total

# END is the key new concept — it's a special block that runs once after all lines have been read.