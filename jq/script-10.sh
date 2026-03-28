#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output the total of adding together all players' first scores.
# Your output should be exactly the number 54.


jq '[.[].scores[0]] | add' scores.json

# .[] — unpacks the array, giving one object at a time
# .scores[0] — extracts the first score from each player
# [...] — wraps all the first scores into a new array: [1, 22, 3, 1, 15, 12]
# | add — sums all the numbers in that array together: 54