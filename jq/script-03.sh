#!/bin/bash

set -euo pipefail

# The input for this script is the person.json file.
# TODO: Write a command to output the name of the person, then a comma, then their profession.
# Your output should be exactly the string "Selma, Software Engineer", but should not contain any quote characters.


#----------Answer--------

jq -r '[.name, .profession] | join(", ")' person.json

# jq — the command-line JSON processor
# -r — "raw" output, strips the surrounding quote characters from the result
# [.name, .profession] — selects the name and profession fields and puts them into an array: ["Selma", "Software Engineer"]
# | join(", ") — pipes that array into join, which concatenates the elements with ", " between them: Selma, Software Engineer
# person.json — the input file

# or

jq -r '"\(.name), \(.profession)"' person.json

# jq -r — raw output, strips surrounding quotes
# "\(.name), \(.profession)" — this is a jq string interpolation expression:

# the outer "..." is a jq string literal
# \( ) is jq's interpolation syntax — it evaluates the expression inside and injects the result into the string
# so \(.name) gets replaced with Selma and \(.profession) gets replaced with Software Engineer
# the ,  between them is just a literal comma and space
# person.json — the input file
