#!/bin/bash

set -euo pipefail

# The input for this script is the events-with-timestamps.txt file.
# TODO: Write a command to show how many times anyone has entered and exited.
# It should be clear from your script's output that there have been 5 Entry events and 4 Exit events.
# The word "Event" should not appear in your script's output.

tail -n +2 events-with-timestamps.txt | cut -f3 | sort | uniq -c

# `tail -n +2 events-with-timestamps.txt` skips the first line (the header row "Date Time Event Name").
# `cut -f3` extracts the 3rd tab-separated field, which is the event type (Entry or Exit).
# This also removes the word "Event" since that was only in the skipped header.
# `sort` groups identical lines together.
# `uniq -c` counts each unique value, giving us "5 Entry" and "4 Exit".
