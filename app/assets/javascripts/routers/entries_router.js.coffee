class Raffler.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Raffler.Collections.Entries()
    @collection.reset($('.container-narrow').data('entries'))

  index: ->
    view = new Raffler.Views.EntriesIndex(collection: @collection)
    $('.container-narrow').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"