module.exports = {
  entry: './functional/index.coffee',
  output: {
    path: __dirname + '/build/',
    publicPath: '/build/',
    filename: 'index.js'
  },
  module: {
    loaders: [
      {test: /\.coffee$/, loader: 'coffee-loader'}
    ]
  },
  resolve: {
    extensions: ["", ".coffee", ".js"]
  }
}
