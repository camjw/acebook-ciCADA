# frozen_string_literal: true

# Adds background colour to the user table
class AddBackgroundColourToUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :background_colour, :string, default: '#FFFFFF'
  end
end
