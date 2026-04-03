#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output the total of adding together all scores from all games from all players.
# Your output should be exactly the number 164.


jq '[.[].scores[]] | add' scores.json

# .[] — unpacks the array, giving one object at a time
# .scores[] — unpacks every score from each player's scores array
# [...] — wraps all the scores into one big array: [1, 10, 4, 22, 9, 6, 3, 12, 17, 1, 15, 2, 25, 11, 8, 12, 6]
# | add — sums everything together: 164