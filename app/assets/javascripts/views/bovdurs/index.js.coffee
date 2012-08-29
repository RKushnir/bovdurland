class Bovdurland.Views.BovdursIndex extends Backbone.View
  template: JST['bovdurs/index']

  events:
    'submit #new_bovdur': 'createBovdur'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)
    @stream = new Firehose.Consumer
      message: (data) =>
        @collection.add(data)
      uri: '//localhost:7474/bovdurs'

    @stream.connect()


  render: ->
    $(@el).html(@template(bovdurs: @collection))
    @collection.each(@appendBovdur)
    this

  appendBovdur: (bovdur) ->
    view = new Bovdurland.Views.Bovdur(model: bovdur)
    $("#bovdurs").append(view.render().el)

  createBovdur: (event) ->
    event.preventDefault()
    @collection.create
      name: $('#bovdur_name').val()
