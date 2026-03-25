#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the number of lines in the file helper-files/helper-3.txt.
# The output should include the number 3. The output should not include the number 19.


#---------------answer--------------

wc -l ../helper-files/helper-3.txt


# How it works:

# wc — word count tool
# -l — counts only lines instead of words or bytes
