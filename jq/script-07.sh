#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output just the names of each player along with the score from their last attempt.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 4" with no quotes.


#-------- Answer -----

jq -r '.[] | "\(.name) \(.scores[-1])"' scores.json

# jq — the command that processes JSON
# -r — outputs plain text, no quote characters around the result
# .[] — unpacks the array, giving one object at a time
# | — passes each object into the next expression
# \(.name) — extracts the name field
# \(.scores[-1]) — extracts the last element of the scores array; negative indices count from the end, so -1 is last, -2 would be second to last, etc.

