$(document).ready ->
  $(document).on 'ajaxStop', ->
    $('span.cart-spinner').hide()
    $('[id^="order-item-quantity"]').removeClass('disabled-field')