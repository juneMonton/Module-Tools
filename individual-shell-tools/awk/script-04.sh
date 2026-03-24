#!/bin/bash

set -euo pipefail

# TODO: Write a command to output just the names of each player in London along with the score from their last attempt.
# Your output should contain 3 lines, each with one word and one number on it.
# The first line should be "Ahmed 4".

awk '$2 == "London" {print $1, $NF}' scores-table.txt

# awk goes line by line and does two things:

# Filter — $2 == "London" skips any line where the 2nd field isn't London
# Print — for matching lines, print the name ($1) and the last score ($NF)

# $NF is the smart part — it automatically counts the fields on each line and picks the last one, so it doesn't matter that Leila has fewer scores than the others.