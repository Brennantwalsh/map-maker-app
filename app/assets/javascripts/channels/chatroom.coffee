App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message_hash) ->
    @perform 'speak', { message: message_hash['message'], user_id: message_hash['user_id'] }

  $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
    if event.keyCode is 13 # return = send
      App.chatroom.speak {message: event.target.value, user_id: event.target.id }
      event.target.value = ''
      event.preventDefault()