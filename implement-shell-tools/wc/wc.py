import os
import sys

# --- Step 1: Parse command-line arguments ---
# Separate flags (-l, -w, -c) from file paths.
args = sys.argv[1:]

count_lines = False  # -l flag
count_words = False  # -w flag
count_bytes = False  # -c flag
files = []

for arg in args:
    if arg == "-l":
        count_lines = True
    elif arg == "-w":
        count_words = True
    elif arg == "-c":
        count_bytes = True
    else:
        files.append(arg)

# If no flags are given, show all three counts (lines, words, bytes)
no_flags = not count_lines and not count_words and not count_bytes

# --- Step 2: Count lines, words, and bytes for each file ---
# Store the results so we can calculate totals for multiple files.
results = []

for file in files:
    with open(file, "r", encoding="utf-8") as f:
        content = f.read()

    # Byte count comes from the file size on disk, not the string length.
    # (Important for multi-byte UTF-8 characters where bytes > chars.)
    byte_count = os.path.getsize(file)

    # Lines = number of newline characters.
    line_count = content.count("\n")

    # Words: Python's str.split() with no argument splits on ANY run of whitespace
    # AND drops empty strings — no separate filter step needed (unlike JS).
    word_count = len(content.split())

    results.append({
        "file": file,
        "lines": line_count,
        "words": word_count,
        "bytes": byte_count,
    })

# --- Step 3: Format and print output ---
# Each number is right-justified in an 8-character field, followed by a space and filename.

def format_row(lines, words, bytes_, name):
    row = ""

    if no_flags:
        # No flags: show all three counts
        row += str(lines).rjust(8)
        row += str(words).rjust(8)
        row += str(bytes_).rjust(8)
    else:
        # Only show the requested counts, in order: lines, words, bytes
        if count_lines:
            row += str(lines).rjust(8)
        if count_words:
            row += str(words).rjust(8)
        if count_bytes:
            row += str(bytes_).rjust(8)

    row += f" {name}"
    return row


for r in results:
    print(format_row(r["lines"], r["words"], r["bytes"], r["file"]))

# If there are multiple files, print a "total" row
if len(results) > 1:
    total_lines = sum(r["lines"] for r in results)
    total_words = sum(r["words"] for r in results)
    total_bytes = sum(r["bytes"] for r in results)
    print(format_row(total_lines, total_words, total_bytes, "total"))
