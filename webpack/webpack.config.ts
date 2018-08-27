import HtmlWebPackPlugin = require('html-webpack-plugin')
import * as path from 'path'
import * as webpack from 'webpack'

const baseConfig: webpack.Configuration = {
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].js',
  },
  node: {
    __dirname: false,
    __filename: false,
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: {
          loader: 'ts-loader',
        },
      },
    ],
  },
  resolve: {
    extensions: ['.js', '.jsx', '.ts', '.tsx', '.json'],
  },
}

const mainConfig: webpack.Configuration = {
  ...baseConfig,
  target: 'electron-main',
  entry: {
    main: './src/main.ts',
  },
}

const rendererConfig: webpack.Configuration = {
  ...baseConfig,
  target: 'electron-renderer',
  entry: {
    renderer: './src/renderer.ts',
  },
  module: {
    rules: [
      {
        test: /\.html$/,
        use: [
          {
            loader: 'html-loader',
            options: { minimize: true },
          },
        ],
      },
    ],
  },
  plugins: [
    new HtmlWebPackPlugin({
      // template: './src/index.html',
      filename: './html/index.html',
    }),
  ],
}

export default [mainConfig, rendererConfig]
