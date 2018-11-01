# frozen_string_literal: true

<<<<<<< HEAD
# Adds User id to messages
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class AddUserIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :user_id, :integer
  end
end
