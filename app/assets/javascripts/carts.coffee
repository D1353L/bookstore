$(document).ready ->
  $(document).on 'change', '#order_item_quantity', (e)->
    $(this).closest('.edit_order_item').submit()