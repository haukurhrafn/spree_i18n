Spree.fetch_cart = ->
  $.ajax
    url: Spree.pathFor("/cart_link"),
    cache: false,
    success: (data) ->
      $('#link-to-cart').html data
      $('#link-to-cart2').html data