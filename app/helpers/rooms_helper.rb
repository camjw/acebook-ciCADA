# frozen_string_literal: true

# helper methods for the room
module RoomsHelper
  def find_message_username(message)
    User.find(message.user_id).username
  end

  def find_message_user(message)
    User.find(message.user_id)
  end
end
