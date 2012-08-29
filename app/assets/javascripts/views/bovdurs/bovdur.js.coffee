class Bovdurland.Views.Bovdur extends Backbone.View
  template: JST['bovdurs/bovdur']
  tagName: 'li'
  className: 'bovdur'

  render: ->
    $(@el).html(@template(bovdur: @model))
    this
