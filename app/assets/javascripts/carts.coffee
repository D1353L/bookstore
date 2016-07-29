$(document).ready ->
  $(document).on 'submit', '[id^="edit_order_item"]', (e)->
    $(this).closest('div.col-xs-4').find('span.cart-spinner').fadeIn 'slow'
    $(this).find('[id^="order-item-quantity"]').addClass('disabled-field')