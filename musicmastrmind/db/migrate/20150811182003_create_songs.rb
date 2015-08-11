class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :writer
      t.integer :track_number, null: false
      t.integer :creator_id, null: false
      t.integer :artist_id, null: false
      t.integer :album_id, null: false

      t.timestamps null: false
    end

    add_index :songs, [:track_number, :album_id], unique: true
    # do we need both?
    add_index :songs, :album_id
    add_index :songs, :creator_id
    add_index :songs, :artist_id
  end
end
