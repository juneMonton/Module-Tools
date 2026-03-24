#!/bin/bash

set -euo pipefail

# TODO: Write a command to output just the names of each player along with the score from their first attempt.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 1".

awk '{print $1, $3}' scores-table.txt

#how it works
#awk sees each word/number separated by spaces as a numbered field:
#awk reads the file line by line
# For each line, {print $1, $3} prints the 1st and 3rd fields
# The , between $1 and $3 adds a space between them