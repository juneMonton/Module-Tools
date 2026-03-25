#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt replacing every occurrence of the string "We'll" with "We will".
# The output should contain 11 lines.


#---------------answer--------------

sed "s/We'll/We will/g" input.txt

# How it works:

# sed — stream editor that transforms text line by line
# s/We'll/We will/g — substitute We'll with We will on every occurrence
# double quotes — used instead of single quotes because the pattern contains a '