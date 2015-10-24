class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :user_id
      t.float :center_lat
      t.float :center_lng
      t.string :artist

      t.timestamps null: false
    end
  end
end
