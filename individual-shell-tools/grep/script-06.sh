#!/bin/bash

set -euo pipefail

# TODO: Write a command to output the name of every `.txt` file in this directory which contains a line of dialogue said by the Doctor.
# The output should contain two filenames.

grep -l "Doctor" *.txt

# How it works:

# -l instead of printing the matching lines, it prints only the filename of each file that contains a match
# *.txt searches through all .txt files in the current directory