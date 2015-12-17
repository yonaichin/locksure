$(document).ready ->
  console.log 'contact page ready'

  $('#Email').on 'click',->
    $(@).find('a').html 'sandy@locksure.com.tw'

