#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output just the names of each player along with the score from their first attempt.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 1" with no quotes.



#-----Answer-----
jq -r '.[] | "\(.name) \(.scores[0])"' scores.json

# jq — the command that processes JSON
# -r — outputs plain text, no quote characters around the result
# .[] — unpacks the array, giving one object at a time
# | — passes each object into the next expression
# \(.name) — extracts the name field from the current object
# \(.scores[0]) — extracts the first element of the scores array