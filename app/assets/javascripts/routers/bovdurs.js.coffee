class Bovdurland.Routers.Bovdurs extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @collection = new Bovdurland.Collections.Bovdurs()
    @collection.fetch()

  index: ->
    view = new Bovdurland.Views.BovdursIndex(collection: @collection)
    $('#container').html(view.render().el)
