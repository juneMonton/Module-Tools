#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the number of words in the file helper-files/helper-3.txt.
# The output should include the number 19. The output should not include the number 92.


#---------------answer--------------

wc -w ../helper-files/helper-3.txt

# How it works:

# wc — word count tool
# -w — counts only words (without this flag it also shows lines and bytes, which includes 92)
# ../helper-files/helper-3.txt — the file to count