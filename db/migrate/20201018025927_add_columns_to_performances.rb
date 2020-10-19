# frozen_string_literal: true

class AddColumnsToPerformances < ActiveRecord::Migration[6.0]
  def change
    add_column :performances, :address, :string
    add_column :performances, :latitude, :float
    add_column :performances, :longitude, :float
  end
end
