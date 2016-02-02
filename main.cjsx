React = require 'react'
ReactDOM = require 'react-dom'

APICaller = require './components/APICaller.cjsx'

ReactDOM.render(
    <APICaller />,
    document.getElementById('react')
    )