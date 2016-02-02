React = require 'react'

module.exports = TemperatureDisplay = React.createClass
    render: ->
        <div>
            { @props.temp_f }
        </div>