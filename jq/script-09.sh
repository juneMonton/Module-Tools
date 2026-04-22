#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output just the names of each player along with the total scores from all of their games added together.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 15" with no quotes.

jq -r '.[] | "\(.name) \(.scores | add)"' scores.json

# jq -r — runs jq with raw output (no quotes)
# .[] — unpacks the array, giving one object at a time
# | — passes each object into the next expression
# \(.name) — extracts the name field
# \(.scores | add) — takes the scores array and pipes it into add, which sums all the numbers together