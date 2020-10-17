# frozen_string_literal: true

class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string   :title, null: false
      t.string   :group, null: false
      t.integer  :genre_id, null: false
      t.integer  :area_id, null: false
      t.integer  :price1, null: false
      t.integer  :price2
      t.integer  :price3
      t.integer  :price4
      t.integer  :price5
      t.date     :start_date, null: false
      t.date     :end_date, null: false
      t.text     :start_at, null: false
      t.integer  :user_id, null: false, foreign_key: true
      t.text     :url, null: false
      t.text     :infomation
      t.string   :theatre
      t.timestamps
    end
  end
end
