# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#reader').html5_qrcode (data) ->
    $('#item').val(data)
    $('.employee').stop().slideDown();
    $('.employee > input').focus()
    $('a.btn').removeClass('disabled')
    $('a.btn').text('Check Out')
  , ((error) ->), ((videoError) ->)
