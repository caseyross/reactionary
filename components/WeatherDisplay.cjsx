React = require 'react'

IntuitiveTemperatureReadout = require './IntuitiveTemperatureReadout.cjsx'
IntuitiveConditionsReadout = require './IntuitiveConditionsReadout.cjsx'
LocationReadout = require './LocationReadout.cjsx'

module.exports = React.createClass

    maybeRenderConditions: ->
        conditions = @props.weather.current_observation.weather
        c = conditions.toLowerCase()
        switch
            when c.includes 'clear' then null
            when c.includes 'chance' then null
            when c.includes 'partly' then null
            when c.includes 'scattered' then null
            else
                <span>
                    <span> and </span> 
                    <IntuitiveConditionsReadout
                        conditions={ conditions }
                    />
                </span>
            
    render: ->
        <div>
            <div>
                It is currently
            </div>
            <div>
                <IntuitiveTemperatureReadout
                    temp={ @props.weather.current_observation.feelslike_c }
                    units='c'
                />
                { @maybeRenderConditions() }
            </div>
            <div>
                in 
                <LocationReadout
                    location={ @props.weather.current_observation.display_location }
                />
            </div>
        </div>