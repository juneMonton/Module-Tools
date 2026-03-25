#!/bin/bash

set -euo pipefail

# TODO: Write a command to output, for each `.txt` file in this directory, how many lines of dialogue the Doctor has.
# The output should show that dialogue.txt contains 6 lines, dialogue-2.txt contains 2, and dialogue-3.txt contains 0.


grep -c "^Doctor" *.txt

# How it works:

# ^Doctor — ^ means "start of line", so it only matches lines where Doctor appears at the beginning, filtering out lines where Doctor is just mentioned mid-sentence
# -c — prints the count of matching lines per file
# *.txt — runs across all .txt files in the current directory
