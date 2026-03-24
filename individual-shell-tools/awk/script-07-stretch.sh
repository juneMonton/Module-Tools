#!/bin/bash

set -euo pipefail

# NOTE: This is a stretch exercise - it is optional.

# TODO: Write a command to output just the names of each player along with the total of adding all of that player's scores.
# Your output should contain 6 lines, each with one word and one number on it.
# The first line should be "Ahmed 15". The second line should be "Basia 37"


awk '{sum=0; for(i=3; i<=NF; i++) sum+=$i; print $1, sum}' scores-table.txt

# **How it works:**

# 1. **`sum=0`** — resets the total for each new player/line
# 2. **`for(i=3; i<=NF; i++)`** — loops through fields starting from `$3` (first score) up to `$NF` (last score), skipping name and city
# 3. **`sum+=$i`** — adds each score to the total
# 4. **`print $1, sum`** — prints the player name and their total