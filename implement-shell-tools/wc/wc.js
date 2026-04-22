const fs = require("fs");

// --- Step 1: Parse command-line arguments ---
// Separate flags (-l, -w, -c) from file paths.
const args = process.argv.slice(2);

let countLines = false; // -l flag
let countWords = false; // -w flag
let countBytes = false; // -c flag
const files = [];

for (const arg of args) {
  if (arg === "-l") {
    countLines = true;
  } else if (arg === "-w") {
    countWords = true;
  } else if (arg === "-c") {
    countBytes = true;
  } else {
    files.push(arg);
  }
}

// If no flags are given, show all three counts (lines, words, bytes)
const noFlags = !countLines && !countWords && !countBytes;

// --- Step 2: Count lines, words, and bytes for each file ---
// We store the results so we can calculate totals for multiple files.
const results = [];

for (const file of files) {
  const content = fs.readFileSync(file, "utf-8");
  const bytes = fs.statSync(file).size; // byte count from file size (not string length)
  const lines = content.split("\n").length - 1; // number of newline characters
  // Words: split on whitespace, filter out empty strings from leading/trailing space
  const words = content.split(/\s+/).filter((w) => w.length > 0).length;

  results.push({ file, lines, words, bytes });
}

// --- Step 3: Format and print output ---
// Each number is right-justified in an 8-character field, followed by a space and filename.

function formatRow(lines, words, bytes, name) {
  let row = "";

  if (noFlags) {
    // No flags: show all three counts
    row += String(lines).padStart(8, " ");
    row += String(words).padStart(8, " ");
    row += String(bytes).padStart(8, " ");
  } else {
    // Only show the requested counts, in order: lines, words, bytes
    if (countLines) row += String(lines).padStart(8, " ");
    if (countWords) row += String(words).padStart(8, " ");
    if (countBytes) row += String(bytes).padStart(8, " ");
  }

  row += ` ${name}`;
  return row;
}

for (const r of results) {
  console.log(formatRow(r.lines, r.words, r.bytes, r.file));
}

// If there are multiple files, print a "total" row
if (results.length > 1) {
  const totalLines = results.reduce((sum, r) => sum + r.lines, 0);
  const totalWords = results.reduce((sum, r) => sum + r.words, 0);
  const totalBytes = results.reduce((sum, r) => sum + r.bytes, 0);
  console.log(formatRow(totalLines, totalWords, totalBytes, "total"));
}
