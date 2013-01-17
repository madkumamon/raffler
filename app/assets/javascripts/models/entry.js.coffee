class Raffler.Models.Entry extends Backbone.Model

  win: ->
    @set(target: true)
    @save()
    @trigger('highlight')