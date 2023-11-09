React = require 'react'

module.exports = React.createClass

    getIntuitiveConditions: (conditions) ->
        c = conditions.toLowerCase()
        switch
            when c.includes 'storm' then 'stormy'
            when c.includes 'squall' then 'stormy'
            when c.includes 'tornado' then 'stormy'
            
            when c.includes 'snow' then 'snowy'
            
            when c.includes 'sleet' then 'icy'
            
            when c.includes 'rain' then 'rainy'
            
            when c.includes 'mist' then 'misty'
            when c.includes 'drizzle' then 'misty'
            
            when c.includes 'haze' then 'hazy'
            when c.includes 'smoke' then 'hazy'
            when c.includes 'ash' then 'hazy'
            when c.includes 'dust' then 'hazy'
            when c.includes 'sand' then 'hazy'
            
            when c.includes 'fog' then 'foggy'
            
            when c.includes 'overcast' then 'cloudy'
            when c.includes 'broken clouds' then 'cloudy'

            when (c.includes 'clear') or (c.includes 'few clouds') or (c.includes 'scattered clouds')
                if @props.windy then 'windy'
                if @props.daytime then 'sunny' else 'clear'
            
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
    sunny: '#F3F0CB'
    hazy: '#CCA983'
    misty: '#8EBD95'
    icy: '#D5EDF5'
    stormy: '#222'
    foggy: 'gray'
    cloudy: '#D6C9D5'
    snowy: 'white'
    rainy: '#745EE2'
    mysterious: '#FF5A3C'