# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new_search_form').on 'ajax:success', (e, products) ->
    $('tr.product').hide()
    ids = (products.map (p) -> "#product_#{p.id}").join(',')
    $(ids).show()
