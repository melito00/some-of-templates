import { FuseBox, JSONPlugin } from 'fuse-box'

let isProduction = false

console.log(process.env.NODE_ENV)
if (process.env.NODE_ENV === 'production') {
  isProduction = true
}

console.log('default: ' + isProduction)

const fuse = FuseBox.init({
  homeDir: 'src',
  output: 'dist/$name.js',
  sourceMaps: !isProduction,
  tsConfig: 'tsconfig.json',
  log: true,
  debug: true,
  target: 'electron',
  plugins : [
    JSONPlugin()
  ]
})

fuse.bundle('app1')
  .instructions('> index.ts')

fuse.run()
