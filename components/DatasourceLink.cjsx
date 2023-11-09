React = require 'react'

module.exports = React.createClass

	style: ->
		color: 'gray'

	render: ->
		<a href={ @props.href } style={ @style() }>
			{ @props.label }
		</a>