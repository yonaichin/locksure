#$(document).delegate '*[data-toggle="lightbox"]', 'click', (event) ->
#  event.preventDefault()
#  debugger
#  $(@).ekkoLightbox()
$(document).ready ->
  $('.product_title').on 'click', ->
    $(@).parent().parent().prev().find('img').trigger 'click'
