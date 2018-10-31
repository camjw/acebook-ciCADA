# frozen_string_literal: true

class AddBackgroundColourToUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :background_colour, :string, default: '#FFFFFF'
  end
end
