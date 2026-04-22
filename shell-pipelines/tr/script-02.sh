#!/bin/bash

set -euo pipefail

# The input for this script is the text.txt file, which contains an email.
# Unfortunately, the author wrote it using a German keyboard which has the Y and Z keys swapped,
# so every Y should be a Z, and every Z should be a Y!
#
# TODO: Write a command to output the contents of text.txt with every Y and Z swapped (both upper and lower case).

cat text.txt | tr 'yzYZ' 'zyZY'

# `cat text.txt` outputs the contents of the file.
# `tr 'yzYZ' 'zyZY'` swaps characters from the first set to the second set:
#   y -> z, z -> y, Y -> Z, Z -> Y
# `tr` replaces each character in the first set with the corresponding character
# in the second set, so all Y/Z swaps happen simultaneously (not sequentially),
# meaning a Y won't accidentally become a Z and then back to a Y.
