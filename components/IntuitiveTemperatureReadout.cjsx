React = require 'react'

module.exports = React.createClass

    getIntuitiveTemperature: (temp, units) ->
        if units == 'f'
            temp = (temp - 32) * 5/9
        switch
            when temp < -5 then 'very cold'
            when temp < 5 then 'cold'
            when temp < 20 then 'cool'
            when temp < 25 then 'warm'
            when temp < 35 then 'hot'
            else 'very hot'

    render: ->
        temp = @getIntuitiveTemperature @props.temp, @props.units
        <span style={ styles temp } >
            { temp }
        </span>
        
styles = (temp) ->
    color: colors[temp]
    textTransform: 'uppercase'
    fontSize: '3.2rem'
    
colors =
    'very cold': 'blue'
    cold: 'blue'
    cool: 'blue'
    warm: 'yellow'
    hot: 'orange'
    'very hot': 'red'