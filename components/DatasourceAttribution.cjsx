React = require 'react'

FlexContainer = require './FlexContainer.cjsx'
DatasourceLink = require './DatasourceLink.cjsx'

module.exports = React.createClass

	render: ->
		<FlexContainer align='end' direction='column' padding='20px 0'>
			<DatasourceLink
				href='https://openweathermap.org/current'
				label='OpenWeather'
			/>
			<DatasourceLink
				href='https://simplemaps.com/data/world-cities'
				label='simplemaps'
			/>
		</FlexContainer>