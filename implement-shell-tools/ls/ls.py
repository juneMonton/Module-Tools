import os
import sys

# --- Step 1: Parse command-line arguments ---
# sys.argv: ["ls.py", ...flags and optional directory]
args = sys.argv[1:]

show_all = False   # -a flag: include hidden files (dotfiles) and . / ..
directory = "."    # default: current working directory

for arg in args:
    if arg == "-1":
        # -1 means "one entry per line" — we always do this, so nothing extra needed
        pass
    elif arg == "-a":
        show_all = True
    else:
        directory = arg

# --- Step 2: Read directory contents ---
# os.listdir returns a list of filenames in the directory.
# It does NOT include "." and ".." by default.
entries = os.listdir(directory)

# --- Step 3: Filter and sort ---
if not show_all:
    # Without -a, hide entries starting with "." (dotfiles)
    entries = [e for e in entries if not e.startswith(".")]
else:
    # With -a, add "." and ".." at the beginning (real ls includes these)
    entries = [".", ".."] + entries

# ls outputs entries in alphabetical order.
# os.listdir does NOT guarantee a sorted order (unlike Node's fs.readdirSync on macOS),
# so we sort explicitly. "." and ".." naturally sort first.
entries.sort()

# --- Step 4: Print one entry per line ---
for entry in entries:
    print(entry)
