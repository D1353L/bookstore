$(document).ready ->
  $(document).on 'change', '[id^="order-item-quantity"]', (e)->
    $(this).closest('form.edit_order_item').submit()
    $(this).closest('div.col-xs-4').find('span.cart-spinner').fadeIn 'slow'
    $(this).addClass('disabled-field')