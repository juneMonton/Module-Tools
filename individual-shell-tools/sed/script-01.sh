#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt with all occurrences of the letter `i` replaced with `I`.
# The output should contain 11 lines.
# The first line of the output should be: "ThIs Is a sample fIle for experImentIng wIth sed.".


#---------------answer--------------

sed 's/i/I/g' input.txt

# How it works:

# sed — stream editor that transforms text
# s/i/I/g — the substitution command:

# s — substitute
# i — the pattern to find
# I — the replacement
# g — globally replace all occurrences on each line, not just the first