#!/bin/bash

set -euo pipefail

# The input for this script is the events.txt file.
# TODO: Write a command to show how many times anyone has entered and exited.
# It should be clear from your script's output that there have been 5 Entry events and 4 Exit events.

cut -d' ' -f1 events.txt | sort | uniq -c

# `cut -d' ' -f1 events.txt` extracts only the first field (Entry or Exit) from each line,
# using a space as the delimiter (`-d' '`).
# `sort` sorts the lines so all "Entry" lines are together and all "Exit" lines are together.
# `uniq -c` removes duplicates and prefixes each unique line with its count.
# The output shows "5 Entry" and "4 Exit".
