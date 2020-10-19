# frozen_string_literal: true

class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id, foreign_key: true
      t.integer :performance_id, foreign_key: true

      t.timestamps
    end
  end
end
