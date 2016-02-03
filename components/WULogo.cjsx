React = require 'react'

WUConfig = require '../config/wu.js'

module.exports = React.createClass

    render: ->
        <a href={ WUConfig.REFERRAL_LINK }>
            <img
                style={ styles }
                src={ WUConfig.LOGO_SRC }
            />
        </a>
        
styles =
    width: 200