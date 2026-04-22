import sys

# --- Step 1: Parse command-line arguments ---
# sys.argv is a list: ["cat.py", ...flags and files]
# We skip the first element (the script name) and split flags from file paths.
args = sys.argv[1:]

number_all = False        # -n flag: number ALL lines
number_non_blank = False  # -b flag: number only non-blank lines
files = []

for arg in args:
    if arg == "-n":
        number_all = True
    elif arg == "-b":
        number_non_blank = True
    else:
        files.append(arg)

# -b takes priority over -n (same as real cat)
if number_non_blank:
    number_all = False

# --- Step 2: Process each file ---
for file in files:
    with open(file, "r", encoding="utf-8") as f:
        content = f.read()

    if not number_all and not number_non_blank:
        # No flags — just print the raw content.
        # Use sys.stdout.write so we don't add an extra newline like print() does.
        sys.stdout.write(content)
    else:
        # Split into lines and number them.
        # Line numbering resets for each file (matching macOS cat behaviour).
        lines = content.split("\n")
        line_number = 1

        for i, line in enumerate(lines):
            # When a file ends in "\n", split produces a trailing empty string.
            # We skip it so we don't print an extra blank line at the end.
            if i == len(lines) - 1 and line == "":
                break

            is_blank = line == ""

            if number_all:
                # -n: number every line, right-justified in 6 chars, followed by a tab
                prefix = str(line_number).rjust(6)
                sys.stdout.write(f"{prefix}\t{line}\n")
                line_number += 1
            elif number_non_blank:
                if is_blank:
                    # Blank lines get no number, just a newline
                    sys.stdout.write("\n")
                else:
                    prefix = str(line_number).rjust(6)
                    sys.stdout.write(f"{prefix}\t{line}\n")
                    line_number += 1
