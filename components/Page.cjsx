React = require 'react'

APICaller = require './APICaller.cjsx'

module.exports = React.createClass

    render: ->
        <div style={ styles } >
            <APICaller />
        </div>
        
styles =
    background: '#444'
    height: '100%'