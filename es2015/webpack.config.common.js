const path = require('path');
const webpack = require('webpack');

var baseConfig = {
  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'dist')
  },
  devtool: 'source-map',
  node: {
    __dirname: false
  },
  resolve: {
    extensions: ['.ts', '.tsx', '.js']
  },
  plugins: [
    new webpack.LoaderOptionsPlugin({
      debug: true
    }),
    new webpack.EnvironmentPlugin({
      NODE_ENV: 'development',
      DEBUG: false
    })
  ],
  
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: "awesome-typescript-loader",
        exclude: [/node_modules/],
      },
      {
        test: /\.js$/,
        enforce: "pre",
        loader: "source-map-loader"
      }
    ],
  },
  externals: {
    // "electron": require("electron"),
    // "react": "React",
    // "react-dom": "ReactDOM"
  },
  profile: true,
  stats: {
    hash: true,
    version: true,
    timings: true,
    assets: true,
    chunks: true,
    modules: true,
    reasons: true,
    children: true,
    source: false,
    errors: true,
    errorDetails: true,
    warnings: true,
    publicPath: true
  }, 
};

module.exports = baseConfig;
