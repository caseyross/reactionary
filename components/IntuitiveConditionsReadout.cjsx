React = require 'react'

module.exports = React.createClass

    getIntuitiveConditions: (conditions) ->
        c = conditions.toLowerCase()
        switch
            when c.includes 'sunny' then 'sunny'
            when c.includes 'sleet' then 'icy'
            when c.includes 'freezing' then 'icy'
            when c.includes 'rain' then 'rainy'
            when c.includes 'storm' then 'stormy'
            when c.includes 'snow' then 'snowy'
            when c.includes 'fog' then 'foggy'
            when c.includes 'mist' then 'foggy'
            when c.includes 'haze' then 'hazy'
            when c.includes 'cloud' then 'cloudy'
            when c.includes 'overcast' then 'cloudy'
            else 'mysterious'

    render: ->
        conditions = @getIntuitiveConditions @props.conditions
        <span style={ styles conditions } >
            { conditions }
        </span>
        
styles = (conditions) ->
    color: colors[conditions]
    
colors =
    sunny: 'red'
    icy: 'blue'
    rainy: 'blue'
    stormy: 'gray'
    snowy: 'white'
    foggy: 'gray'
    hazy: 'gray'
    cloudy: 'gray'
    mysterious: 'yellow'