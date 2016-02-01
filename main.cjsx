React = require 'react'
ReactDOM = require 'react-dom'

SearchBar = React.createClass
    render: ->
        <input type='search'></input>

ReactDOM.render(
    <SearchBar />,
    document.getElementById('react')
    )