#!/bin/bash

set -euo pipefail

# TODO: Write a command to output every line in dialogue.txt that contains the string "cure", as well as the line before that line.
# The output should contain two pairs of two lines of text (with a separator between them).


grep -iB1 "cure" dialogue.txt

# How it works:

# -i makes the search case-insensitive
# -B1 prints 1 line Before each matching line
# The separator -- is automatically added by grep between each pair of results