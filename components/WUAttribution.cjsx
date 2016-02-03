React = require 'react'

WUCreditLine = require './WUCreditLine.cjsx'
WULogo = require './WULogo.cjsx'

module.exports = React.createClass

    style: ->
        color: 'white'
        margin: '20px 0'
        padding: '20px'
        
    render: ->
        <div style={ @style() } >
            <WUCreditLine />
            <WULogo />
        </div>