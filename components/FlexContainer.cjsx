React = require 'react'

module.exports = React.createClass

    style: ->
        display: 'flex'
        flexDirection: @props.direction
        justifyContent: @props.justify
        alignItems: @props.align
        
    render: ->
        <div style={ @style() } >
            { @props.children }
        </div>