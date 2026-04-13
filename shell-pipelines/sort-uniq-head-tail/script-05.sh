#!/bin/bash

set -euo pipefail

# The input for this script is the events.txt file.
# TODO: Write a command to show a list of all events that have happened, without duplication.
# The order they're displayed doesn't matter, but we never want to see the same event listed twice.
# Your output should contain 6 lines.

sort events.txt | uniq

# `sort events.txt` sorts all lines alphabetically, grouping duplicate lines together.
# `uniq` removes consecutive duplicate lines, keeping only one of each.
# `sort` is needed first because `uniq` only removes duplicates that are next to each other.
# The result is 6 unique events with no duplicates.
