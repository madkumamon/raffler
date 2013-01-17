class Raffler.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'tr'

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightTarget, this)

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)

  highlightTarget: ->
    $('.target').removeClass('highlight')
    @$('.target').addClass('highlight')

  render: ->
    $(@el).html(@template(entry: @model))
    this
