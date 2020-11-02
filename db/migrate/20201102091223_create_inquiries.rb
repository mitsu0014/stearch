class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :message
      t.string :email

      t.timestamps
    end
  end
end
