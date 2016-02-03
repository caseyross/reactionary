React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
IntuitiveTemperatureReadout = require './IntuitiveTemperatureReadout.cjsx'
IntuitiveConditionsReadout = require './IntuitiveConditionsReadout.cjsx'
LocationReadout = require './LocationReadout.cjsx'

module.exports = React.createClass

    maybeRenderConditions: ->
        conditions = @props.weather.current_observation.weather
        c = conditions.toLowerCase()
        switch
            when c == '' then null
            else
                <span>
                    <span style={ margin: '20px' } >
                        and
                    </span> 
                    <IntuitiveConditionsReadout
                        conditions={ conditions }
                        daytime={ @isLocalDaytime() }
                    />
                </span>
                
    isLocalDaytime: ->
        time = @props.weather.moon_phase.current_time
        sunrise = @props.weather.moon_phase.sunrise
        sunset = @props.weather.moon_phase.sunset
        return sunrise.hour < parseInt(time.hour, 10) < sunset.hour or
            sunrise.hour == time.hour && sunrise.minute < parseInt(time.minute, 10) or
            time.hour == sunset.hour && parseInt(time.minute, 10) < sunset.minute
        
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