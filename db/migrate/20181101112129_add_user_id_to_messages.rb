# frozen_string_literal: true

# Adds User id to messages
class AddUserIdToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :user_id, :integer
  end
end
