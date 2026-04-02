#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output just the names of each player, one per line.
# Your output should contain 6 lines, each with just one word on it.
# Your output should not contain any quote characters.

#-------Answer---------
jq -r '.[].name' scores.json

# .[] — iterates over every element in the top-level array
# .name — selects the name field from each element
# -r — strips the quotes from each name



#-------Additional notes-------
# The single quotes '...' are a shell thing, not a jq thing.
# They tell the shell "don't touch anything inside here, pass it exactly as-is to the command".


