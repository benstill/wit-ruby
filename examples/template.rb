require 'wit'

access_token = 'YOUR_ACCESS_TOKEN'

actions = {
  :say => -> (session_id, msg) {
    p msg
  },
  :merge => -> (session_id, context, entities, msg) {
    return context
  },
  :error => -> (session_id, context) {
    p 'Oops I don\'t know what to do.'
  },
}
client = Wit.new access_token, actions

session_id = 'my-user-id-42'
client.run_actions session_id, 'your message', {}
