React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
APICaller = require './APICaller.cjsx'

module.exports = React.createClass

    style: ->
        background: '#444'
        height: '100%'
        overflow: 'hidden'
        
    render: ->
        <div style={ @style() } >
            <FlexContainer direction='column' justify='center' align='center' height='100%'>
                <APICaller />
            </FlexContainer>
        </div>