# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#reader').html5_qrcode (data) ->
    $('#item').val(data)
    $.ajax {
      url: '/items/' + data + '/name',
      method: 'GET',
      json: true,
      success: (resp) ->
        $('#item').val(data + ' - ' + resp['name'])
    }
    $('.employee').stop().slideDown();
    $('.employee > input').focus()
    $('.btn').removeClass('disabled')
    $('.btn').text('Check Out')
  , ((error) ->), ((videoError) ->)
  $('.btn').click ->
    $('#item').removeAttr('disabled')
