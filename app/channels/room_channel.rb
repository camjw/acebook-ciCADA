# frozen_string_literal: true

<<<<<<< HEAD
# words to calm down rubocop
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create!(content: data['message'], user_id: current_user.id)
  end
end
