import { FuseBox } from 'fuse-box';

const isProduction = process.env.NODE_ENV === 'production';

console.log('default: ' + isProduction);

const fuse = FuseBox.init({
  homeDir: 'src/main',
  output: 'dist/main/$name.js',
  sourceMaps: !isProduction,
  tsConfig: 'tsconfig.json',
  log: true,
  debug: true,
  target: 'server',
});

fuse.bundle('index')
  .instructions('> [index.ts]');

fuse.run();
