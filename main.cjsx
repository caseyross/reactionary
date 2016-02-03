require 'normalize.css'
require './stylesheets/main.css'

React = require 'react'
ReactDOM = require 'react-dom'

Page = require './components/Page.cjsx'

ReactDOM.render(
    <Page />,
    document.getElementById('react')
    )