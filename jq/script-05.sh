#!/bin/bash

set -euo pipefail

# The input for this script is the scores.json file.
# TODO: Write a command to output the names of each player, as well as their city.
# Your output should contain 6 lines, each with two words on it.

#-------Answer------
jq -r '.[] | "\(.name) \(.city)"' scores.json

# .[] — iterates over every element in the array
# | — pipes each element into the next expression
# "\(.name) \(.city)" — string interpolation, injecting the name and city fields with a space between them