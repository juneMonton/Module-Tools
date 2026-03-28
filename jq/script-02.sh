#!/bin/bash

set -euo pipefail

# The input for this script is the person.json file.
# TODO: Write a command to output the address of the person, all on one line, with a comma between each line.
# Your output should be exactly the string "35 Fashion Street, London, E1 6PX", but should not contain any quote characters.

#----------Answer--------
jq -r .name person.json

# .name — selects the name field, returning "Selma"
# -r — strips the quotes, outputting Selma instead of "Selma"


jq -r '.address | join(", ")' person.json

# .address — selects the address array ["35 Fashion Street", "London", "E1 6PX"]
# | join(", ") — joins the array elements with ", "
# -r — strips the quotes from the final output