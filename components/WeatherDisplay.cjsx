React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
IntuitiveTemperatureReadout = require './IntuitiveTemperatureReadout.cjsx'
IntuitiveConditionsReadout = require './IntuitiveConditionsReadout.cjsx'
LocationReadout = require './LocationReadout.cjsx'

module.exports = React.createClass

    maybeRenderConditions: ->
        conditions = @props.weather.weather[0].description
        switch
            when conditions == '' then null
            else
                <span>
                    <span style={ margin: '20px' } >
                        and
                    </span>
                    <IntuitiveConditionsReadout
                        conditions={ conditions }
                        daytime={ @isLocalDaytime() }
                        windy={ @props.weather.wind.speed > 5 }
                    />
                </span>
                
    isLocalDaytime: ->
        time = @props.weather.dt
        sunrise = @props.weather.sys.sunrise
        sunset = @props.weather.sys.sunset
        return sunrise < time < sunset
        
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
                <FlexContainer direction='row' justify='center' wrap='wrap'>
                    <IntuitiveTemperatureReadout
                        temp={ @props.weather.main.feels_like }
                        units='c'
                    />
                    { @maybeRenderConditions() }
                </FlexContainer>
                <div style={ alignSelf: 'flex-end' } >
                    in 
                    <LocationReadout
                        location={ @props.location }
                    />
                </div>
            </FlexContainer>
        </div>