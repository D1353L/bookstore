$(document).ready ->
  $(document).on 'change', '[id^="order-item-quantity"]', (e)->
    $(this).closest('form.edit_order_item').submit()