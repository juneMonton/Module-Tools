#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the names of each player, as well as their city.
# Your output should contain 6 lines, each with two words on it, separated by a space.

awk '{print $1, $2}' scores-table.txt

# **How it works:**
# - `$1` = player name
# - `$2` = city
# - The `,` between them prints a **space** between the two values

#or you can also use,
#cut -d' ' -f1,2 scores-table.txt