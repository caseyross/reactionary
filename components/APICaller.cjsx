React = require 'react'

Autosuggest = require 'react-autosuggest'
TemperatureDisplay = require './TemperatureDisplay.cjsx'

fetchJsonp = require 'fetch-jsonp'

module.exports = APICaller = React.createClass
    getInitialState: ->
        search_text: null
        suggestions: []
        weather: null
    updateSearchText: (event, { newValue }) ->
        @setState
            search_text: newValue
    updateSuggestions: ( { value } ) ->
        @getSuggestionsFromAPI(value)
        .then (suggestions) =>
            @setState
                suggestions: suggestions
    getSuggestionsFromAPI: (query) ->
        fetchJsonp 'https://autocomplete.wunderground.com/aq?query=' + query,
            jsonpCallback: 'cb'
        .then (res) ->
            if res.ok
                res.json()
            else
                throw new Error('Autocomplete API responded with an error')
        .then (json) ->
            json.RESULTS
        .catch (err) ->
            console.log err
            []
    render: ->
        <Autosuggest
            suggestions={ @state.suggestions }
            onSuggestionsUpdateRequested={ @updateSuggestions }
            getSuggestionValue={ (suggestion) -> suggestion.name }
            renderSuggestion={ (suggestion) ->
                <span>
                    { suggestion.name }
                </span>
            }
            inputProps={
                value: @state.search_text
                onChange: @updateSearchText
                type: 'search'
                placeholder: 'Where?'
            }
        />