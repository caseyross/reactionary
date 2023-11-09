var path = require('path');
var dotenvWebpack = require('dotenv-webpack')
var htmlWebpackPlugin = require('html-webpack-plugin')

module.exports = {
    entry: path.join(__dirname, 'main.cjsx'),
    output: {
        path: path.join(__dirname, '/static'),
        filename: 'bundle.js'
    },
    module: {
        loaders: [
            {
                test: /\.cjsx$/,
                loader: 'coffee!cjsx'
            },
            {
                test: /\.css$/,
                loader: 'style!css'
            },
            {
                test: /\.jade$/,
                loader: 'jade'
            },
            {
                test: /\.json$/,
                loader: 'json'
            }
            ]
    },
	plugins: [
		new dotenvWebpack(),
		new htmlWebpackPlugin({
			template: './templates/index.jade',
		})
	]
};