const prettier = require('prettier');
const { argv } = require('yargs');
const fs = require('fs').promises;

const TARGET_DIR = argv.path;

(async function main () {
  if (!TARGET_DIR ||TARGET_DIR === '') {
    console.error('You must provide a path')
    process.exitCode = 1
  }
  const paths = await fs.readdir(TARGET_DIR);
  paths.forEach(async path => {
    const data = await fs.readFile(`${TARGET_DIR}/${path}`, { encoding: 'utf8' })
    const result = prettier.format(data, {
      parser: "babel",
      endOfLine: 'lf'
    })

    await fs.writeFile(`${TARGET_DIR}/${path}`, result, { encoding: 'utf8' })
  })
})().catch((error) => {
  process.exitCode = 1
  console.error(error)
});