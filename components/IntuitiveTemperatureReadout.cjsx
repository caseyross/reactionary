React = require 'react'

module.exports = React.createClass

    getIntuitiveTemperature: (temp, units) ->
        if units == 'f'
            temp = (temp - 32) * 5/9
        switch
            when temp < -7 then 'very cold'
            when temp < 11 then 'cold'
            when temp < 22 then 'cool'
            when temp < 29 then 'warm'
            when temp < 37 then 'hot'
            else 'very hot'
        
    style: (temp) ->
        color: colors[temp]
        textTransform: 'uppercase'
        fontSize: '4.8rem'

    render: ->
        temp = @getIntuitiveTemperature @props.temp, @props.units
        <span style={ @style temp } >
            { temp }
        </span>
    
colors =
    'very cold': '#6F66E4'
    cold: '#86A2DC'
    cool: '#C2D5FF'
    warm: '#FF972F'
    hot: '#FF5821'
    'very hot': '#FF310A'