# frozen_string_literal: true

<<<<<<< HEAD
# Creates the message table
=======
>>>>>>> 44083affd5ab4e42ca30392874f830777e97f6fc
class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content

      t.timestamps
    end
  end
end
