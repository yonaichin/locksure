$(document).ready ->
  $('img').on 'contextmenu',(e)->
    e.preventDefault()

  #switch window.location.pathname.split('/')[1]
  #  when ''
  #    $('.nav.navbar-nav.custom li').eq(0).addClass('active')
  #  when 'about'
  #    $('.nav.navbar-nav.custom li').eq(1).addClass('active')
  #  when 'products'
  #    $('.nav.navbar-nav.custom li').eq(2).addClass('active')
  #  when 'facilities'
  #    $('.nav.navbar-nav.custom li').eq(3).addClass('active')
  #  when 'catalog'
  #    $('.nav.navbar-nav.custom li').eq(4).addClass('active')
  #  when 'contact'
  #    $('.nav.navbar-nav.custom li').eq(5).addClass('active')

