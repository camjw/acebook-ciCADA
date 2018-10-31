# frozen_string_literal: true

# Adds the font to the user table
class AddFontToUserTable < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :font, :string, default: 'Lobster'
  end
end
