# frozen_string_literal: true

<<<<<<< HEAD
# words to calm down rubocop
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast 'room_channel',
                                 message: render_message(message)
  end

  private

  def render_message(message)
<<<<<<< HEAD
    ApplicationController.renderer.render(partial: 'messages/message',
                                          locals: { message: message })
=======
    ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
  end
end
