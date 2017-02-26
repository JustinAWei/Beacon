# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#reader').html5_qrcode (data) ->
    $('#item').val(data)
    $.ajax {
      url: '/items/' + data + '/checked_out',
      method: 'GET',
      json: true,
      success: (resp) ->
        $('.btn').removeClass('disabled')
        if resp['checked_out']
          $('.btn').text('Check In')
          $('form').attr('action', '/checkin')
        else
          $('.employee').stop().slideDown();
          $('.employee > input').focus()
          $('.btn').text('Check Out')
        $.ajax {
          url: '/items/' + data + '/name',
          method: 'GET',
          json: true,
          success: (resp) ->
            $('#item').val(data + ' - ' + resp['name'])
        }
    }
  , ((error) ->), ((videoError) ->)
  $('.btn').click ->
    $('#item').removeAttr('disabled')
