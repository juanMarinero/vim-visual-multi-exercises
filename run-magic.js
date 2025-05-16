const { markdownMagic } = require('markdown-magic');
const path = require('path');

const inputFile = path.join(__dirname, 'README_magic.md');
const outputFile = path.join(__dirname, 'README.md');

markdownMagic(inputFile, {
  output: {
    pathFormatter: () => outputFile,
    applyTransformsToSource: false
  }
}).then(() => {
  console.log(`Processed content written to ${outputFile}`);
});
