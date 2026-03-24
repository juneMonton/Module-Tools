#!/bin/bash

set -euo pipefail

# TODO: Write a command to output just the names of each player in `scores-table.txt`.
# Your output should contain 6 lines, each with just one word on it.

awk '{print $1}' scores-table.txt

# **How it works:**
# - `awk` processes the file line by line
# - `$1` refers to the first field (column) on each line, which is the player's name
# - This gives you 6 lines, one name each