React = require 'react'

WUCreditLine = require './WUCreditLine.cjsx'
WULogo = require './WULogo.cjsx'

module.exports = React.createClass

    render: ->
        <div>
            <WUCreditLine />
            <WULogo />
        </div>