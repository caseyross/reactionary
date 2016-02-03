React = require 'react'

module.exports = React.createClass

    getIntuitiveConditions: (conditions) ->
        c = conditions.toLowerCase()
        switch
            when c.includes 'clear'
                if @props.daytime then 'sunny' else 'clear'
            when c.includes 'scattered'
                if @props.daytime then 'sunny' else 'clear'
            
            when c.includes 'squall' then 'windy'
            when c.includes 'blowing' then 'windy'
            
            when c.includes 'haze' then 'hazy'
            when c.includes 'smoke' then 'hazy'
            when c.includes 'ash' then 'hazy'
            when c.includes 'dust' then 'hazy'
            when c.includes 'sand' then 'hazy'
            
            when c.includes 'mist' then 'misty'
            when c.includes 'spray' then 'misty'
            when c.includes 'drizzle' then 'misty'
            
            when c.includes 'freezing' then 'icy'
            when c.includes 'sleet' then 'icy'
            when c.includes 'hail' then 'icy'
            when c.includes 'ice' then 'icy'
            
            when c.includes 'storm' then 'stormy'
            when c.includes 'funnel' then 'stormy'
            
            when c.includes 'fog' then 'foggy'
            
            when c.includes 'cloud' then 'cloudy'
            when c.includes 'overcast' then 'cloudy'
            
            when c.includes 'snow' then 'snowy'
            
            when c.includes 'rain' then 'rainy'
            
            else 'mysterious'
        
    style: (conditions) ->
        color: colors[conditions]
        textTransform: 'uppercase'
        fontSize: '4.8rem'

    render: ->
        conditions = @getIntuitiveConditions @props.conditions
        <span style={ @style conditions } >
            { conditions }
        </span>
    
colors =
    windy: 'red'
    hazy: 'gray'
    misty: 'red'
    icy: 'blue'
    stormy: 'gray'
    foggy: 'gray'
    cloudy: 'gray'
    snowy: 'white'
    rainy: 'blue'
    mysterious: 'yellow'