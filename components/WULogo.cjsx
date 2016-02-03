React = require 'react'

WUConfig = require '../config/wu.js'

module.exports = React.createClass

    style: ->
        width: 200
        
    render: ->
        <a href={ WUConfig.REFERRAL_LINK }>
            <img
                style={ @style() }
                src={ WUConfig.LOGO_SRC }
            />
        </a>