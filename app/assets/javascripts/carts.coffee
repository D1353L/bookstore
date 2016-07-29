$(document).ready ->
  $(document).on 'submit', '[id^="edit_order_item"]', (e)->
    $(this).find('span.glyphicon-refresh').addClass('refresh-spinner')
    $(this).find('button.refresh-btn').addClass('disabled')
  $(document).on 'ajaxStop', ->
    $('span.refresh-spinner').removeClass('refresh-spinner')
    $('button.refresh-btn').removeClass('disabled')