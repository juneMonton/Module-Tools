const fs = require("fs");
const path = require("path");

// --- Step 1: Parse command-line arguments ---
// process.argv: ["node", "ls.js", ...flags and optional directory]
const args = process.argv.slice(2);

let showAll = false; // -a flag: include hidden files (dotfiles) and . / ..
let directory = "."; // default: current working directory

for (const arg of args) {
  if (arg === "-1") {
    // -1 means "one entry per line" — we always do this, so nothing extra needed
  } else if (arg === "-a") {
    showAll = true;
  } else {
    directory = arg;
  }
}

// --- Step 2: Read directory contents ---
// fs.readdirSync returns an array of filenames in the directory.
// It does NOT include "." and ".." by default.
let entries = fs.readdirSync(directory);

// --- Step 3: Filter and sort ---
if (!showAll) {
  // Without -a, hide entries starting with "." (dotfiles)
  entries = entries.filter((entry) => !entry.startsWith("."));
} else {
  // With -a, add "." and ".." at the beginning (real ls includes these)
  entries = [".", "..", ...entries];
}

// ls outputs entries in alphabetical order (case-insensitive on macOS)
// fs.readdirSync already returns them sorted, and "." / ".." sort first naturally.

// --- Step 4: Print one entry per line ---
for (const entry of entries) {
  console.log(entry);
}
