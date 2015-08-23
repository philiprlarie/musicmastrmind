class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :writer
      t.integer :creator_id, null: false
      t.integer :artist_id, null: false

      t.timestamps null: false
    end

    add_index :songs, :creator_id
    add_index :songs, :artist_id
  end
end
