# frozen_string_literal: true

<<<<<<< HEAD
# This model manages relationships with both the Post and the User
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }
end
