#!/bin/bash

set -euo pipefail

# TODO: Write a command to output every line in dialogue.txt that contains the word Doctor (regardless of case).
# The output should contain 9 lines.

grep -in "Doctor" dialogue.txt

# How it works:

# grep — scans files and returns lines that match a pattern

# -i — makes the search case-insensitive, matching Doctor, doctor, DOCTOR etc.

# -n — shows the line number of each matching line

# "Doctor" — the pattern to search for

# dialogue.txt — the file to search in