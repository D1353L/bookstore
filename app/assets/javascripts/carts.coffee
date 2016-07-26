$(document).ready ->
  $(document).on 'change', '.order-item-quantity', (e)->
    $(this).closest('.edit_order_item').submit()