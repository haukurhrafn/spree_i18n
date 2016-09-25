Spree.ready ($) ->
  if ($ 'form#update-cart').is('*')
    ($ 'form#update-cart a.delete').show().one 'click', ->
      ($ this).parents('.CartProduct').first().find('input.form-control').val 0
      ($ this).parents('form').first().submit()
      false

  ($ 'form#update-cart').submit ->
    ($ 'form#update-cart #update-button').attr('disabled', true)

Spree.fetch_cart = ->
  $.ajax
    url: Spree.pathFor("/cart_link"),
    cache: false,
    success: (data) ->
      $('#link-to-cart').html data
      $('#link-to-cart2').html data
