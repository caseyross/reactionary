React = require 'react'

module.exports = SearchBar = React.createClass
    handleChange: ->
        @props.changeHandler @refs.searchInput.value
    render: ->
        <input
            type='search'
            ref='searchInput'
            onChange={ @handleChange }
        />