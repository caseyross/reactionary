React = require 'react'

module.exports = React.createClass

    style: ->
        display: 'flex'
        flexDirection: @props.direction
        justifyContent: @props.justify
        alignItems: @props.align
        flexWrap: @props.wrap
        # These should be set automatically by the caller but I can't figure out how
        height: @props.height
        maxWidth: @props.maxWidth
        padding: @props.padding
        
    render: ->
        <div style={ @style() } >
            { @props.children }
        </div>