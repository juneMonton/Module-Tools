#!/bin/bash

set -euo pipefail

# TODO: Write a command to output input.txt removing any line which contains a number.
# The output should contain 6 lines.


#---------------answer--------------

sed '/[0-9]/d' input.txt

# How it works:

# /[0-9]/ — matches any line containing a digit
# d — deletes the matching lines from the output