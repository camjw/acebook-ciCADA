# frozen_string_literal: true

# Creates a profile pic column for the user table
class AddingProfilePicsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_pic, :string
  end
end
