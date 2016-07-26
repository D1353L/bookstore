$(document).ready ->
  spinner = $('span.cart-spinner')
  field = $('[id^="order-item-quantity"]')
  spinner.hide()
  $(document).on 'ajaxStart', ->
    $('span.cart-spinner').fadeIn 'slow'
    field.addClass('disabled-field')
  $(document).on 'ajaxStop', ->
    $('span.cart-spinner').hide()
    field.removeClass('disabled-field')