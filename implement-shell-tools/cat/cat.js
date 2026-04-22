const fs = require("fs");

// --- Step 1: Parse command-line arguments ---
// process.argv is an array: ["node", "cat.js", ...flags and files]
// We skip the first two (node + script name) and separate flags from file paths.
const args = process.argv.slice(2);

let numberAll = false; // -n flag: number ALL lines
let numberNonBlank = false; // -b flag: number only non-blank lines
const files = [];

for (const arg of args) {
  if (arg === "-n") {
    numberAll = true;
  } else if (arg === "-b") {
    numberNonBlank = true;
  } else {
    files.push(arg);
  }
}

// -b takes priority over -n (same as real cat)
if (numberNonBlank) {
  numberAll = false;
}

// --- Step 2: Process each file ---
for (const file of files) {
  const content = fs.readFileSync(file, "utf-8");

  if (!numberAll && !numberNonBlank) {
    // No flags — just print the raw content
    process.stdout.write(content);
  } else {
    // Split into lines and number them.
    // Line numbering resets for each file (matching macOS cat behaviour).
    const lines = content.split("\n");
    let lineNumber = 1;

    for (let i = 0; i < lines.length; i++) {
      // The last element after split on a file ending with \n is an empty string.
      // We don't print a trailing newline for it — the content already ends with one.
      if (i === lines.length - 1 && lines[i] === "") {
        break;
      }

      const isBlank = lines[i] === "";

      if (numberAll) {
        // -n: number every line, right-justified in 6 chars, followed by a tab
        const prefix = String(lineNumber).padStart(6, " ");
        process.stdout.write(`${prefix}\t${lines[i]}\n`);
        lineNumber++;
      } else if (numberNonBlank) {
        if (isBlank) {
          // Blank lines get no number, just a newline
          process.stdout.write("\n");
        } else {
          const prefix = String(lineNumber).padStart(6, " ");
          process.stdout.write(`${prefix}\t${lines[i]}\n`);
          lineNumber++;
        }
      }
    }
  }
}
