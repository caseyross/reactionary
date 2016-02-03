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