React = require 'react'

module.exports = SearchBar = React.createClass
    render: ->
        <input
            type='search'
            onchange={@handleChange}
        />