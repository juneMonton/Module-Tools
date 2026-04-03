#!/bin/bash

set -euo pipefail

# The input for this script is the text.txt file, which contains an email.
# The author got feedback that they're using too many exclamation marks (!).
#
# TODO: Write a command to output the contents of text.txt with every exclamation mark (!) replaced with a full-stop (.).

cat text.txt | tr '!' '.'

# `cat text.txt` outputs the contents of the file.
# The pipe `|` sends that output to `tr`.
# `tr '!' '.'` translates (replaces) every exclamation mark with a full-stop.
# `tr` stands for "translate" and replaces characters one-to-one from the first set to the second set.
