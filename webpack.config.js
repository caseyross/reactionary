var path = require('path');

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
                test:/\.styl$/,
                loader:'style!css!stylus'
            }
            ]
    }
};