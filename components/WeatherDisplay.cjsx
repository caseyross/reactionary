React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
IntuitiveTemperatureReadout = require './IntuitiveTemperatureReadout.cjsx'
IntuitiveConditionsReadout = require './IntuitiveConditionsReadout.cjsx'
LocationReadout = require './LocationReadout.cjsx'

module.exports = React.createClass

    maybeRenderConditions: ->
        console.log @props.weather
        conditions = @props.weather.current_observation.weather
        c = conditions.toLowerCase()
        switch
            when c == '' then null
            when c.includes 'clear' then null
            when c.includes 'chance' then null
            when c.includes 'partly' then null
            when c.includes 'scattered' then null
            else
                <span>
                    <span style={ margin: '20px' } >
                        and
                    </span> 
                    <IntuitiveConditionsReadout
                        conditions={ conditions }
                    />
                </span>
        
    style: ->
        color: '#ccc'
        fontSize: '1.6rem'
        margin: '20px 0'
            
    render: ->
        <div style={ @style() } >
            <FlexContainer direction='column' justify='center' padding='20px'>
                <div>
                    It&apos;s
                </div>
                <FlexContainer direction='row' justify='center' wrap='wrap' maxWidth='640px'>
                    <IntuitiveTemperatureReadout
                        temp={ @props.weather.current_observation.feelslike_c }
                        units='c'
                    />
                    { @maybeRenderConditions() }
                </FlexContainer>
                <div style={ alignSelf: 'flex-end' } >
                    in 
                    <LocationReadout
                        location={ @props.weather.current_observation.display_location }
                    />
                </div>
            </FlexContainer>
        </div>