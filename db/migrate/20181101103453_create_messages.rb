# frozen_string_literal: true

# Creates the message table
class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content

      t.timestamps
    end
  end
end
