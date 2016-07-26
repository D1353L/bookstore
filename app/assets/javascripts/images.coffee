$(document).ready ->
  $('.cart-spinner').hide()
  $(document).ajaxStart ->
    $('.cart-spinner').fadeIn 'slow'
    $('.order-item-quantity').addClass('disabled-field')
  $(document).ajaxStop ->
    $('.cart-spinner').hide()
    $('.order-item-quantity').removeClass('disabled-field')