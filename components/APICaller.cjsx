React = require 'react'

SearchBar = require './SearchBar.cjsx'
TemperatureDisplay = require './TemperatureDisplay.cjsx'

fetchJsonp = require 'fetch-jsonp'

module.exports = APICaller = React.createClass
    getInitialState: ->
        search_text: null
        autocomplete_results: null
        weather: null
    callAutocompleteAPI: (query) ->
        fetchJsonp 'https://autocomplete.wunderground.com/aq?query=' + query,
            jsonpCallback: 'cb'
        .then (res) ->
            if res.ok
                res.json().then (json) ->
                    console.log json
                    autocomplete_results = json.RESULTS
                .catch (err) ->
                    console.log err
        .catch (err) ->
            console.log err
    render: ->
        <SearchBar
            changeHandler={ @callAutocompleteAPI }
        />