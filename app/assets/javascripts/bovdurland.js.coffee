window.Bovdurland =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Bovdurland.Routers.Bovdurs()
    Backbone.history.start()

$ ->
  Bovdurland.init()
