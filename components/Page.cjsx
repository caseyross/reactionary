React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
APICaller = require './APICaller.cjsx'

module.exports = React.createClass

    render: ->
        <div style={ styles } >
            <FlexContainer direction='column' align='center'>
                <APICaller />
            </FlexContainer>
        </div>
        
styles =
    background: '#444'
    height: '100%'