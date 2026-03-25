#!/bin/bash

set -euo pipefail

# TODO: Write a command to output every line in dialogue.txt said by the Doctor.
# The output should contain 6 lines.

grep "^Doctor:" dialogue.txt

# grep — scans files and returns lines that match a pattern
# -c — instead of printing matching lines, prints the count of matches per file
# ^Doctor: — the pattern; ^ means start of line, so only matches lines where Doctor: is at the beginning
# *.txt — runs across all .txt files in the current directory