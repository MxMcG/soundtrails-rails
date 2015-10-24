class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.float :lat
      t.float :lng
      t.date :date
      t.time :time
      t.string :ticket_link
      t.string :artist_name
      t.string :event_title
      t.integer :map_id

      t.timestamps null: false
    end
  end
end
