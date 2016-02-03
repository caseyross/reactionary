React = require 'react'

module.exports = React.createClass

    render: ->
        <span>
            { @props.location.full }
        </span>