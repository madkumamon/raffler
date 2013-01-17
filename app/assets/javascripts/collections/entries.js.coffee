class Raffler.Collections.Entries extends Backbone.Collection

  model: Raffler.Models.Entry
  url: '/api/entries'

  drawTarget: ->
    target= @shuffle()[0]
    target.win() if target