/* eslint strict: 0 */
'use strict';

const path = require('path');
const webpack = require('webpack');

module.exports = {
  module: {
    preLoaders: [{
      test: /\.tag$/,
      exclude: /node_modules/,
      loader: 'riotjs-loader',
      query: { type: 'none' }
    }],
    loaders: [{
      test: /\.js|\.tag$/,
      loaders: ['babel-loader'],
      exclude: /node_modules/
    }]
  },
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js',
    libraryTarget: 'commonjs2'
  },
  resolve: {
    extensions: ['', '.js', '.jsx'],
    packageMains: ['webpack', 'browser', 'web', 'browserify', ['jam', 'main'], 'main']
  },
  plugins: [
   new webpack.ProvidePlugin({
      riot: 'riot'
    })
  ],
  externals: [
    // put your node 3rd party libraries which can't be built with webpack here (mysql, mongodb, and so on..)
  ]
};
