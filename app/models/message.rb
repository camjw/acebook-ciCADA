# frozen_string_literal: true

# This model manages relationships with both the Post and the User
class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }
end
