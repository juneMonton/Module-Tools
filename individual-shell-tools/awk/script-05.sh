#!/bin/bash

set -euo pipefail

# TODO: Write a command to output just the names of each player along with the number of times they've played the game.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 3".

awk '{print $1, NF-2}' scores-table.txt

# awk goes line by line and does two things:

# Print the name — $1 grabs the first field
# Count the scores — NF is the total number of fields, minus 2 removes the name and city, leaving just the number of scores