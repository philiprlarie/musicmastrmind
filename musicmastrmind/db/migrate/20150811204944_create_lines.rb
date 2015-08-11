class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.text :body, null: false
      t.integer :order, null: false
      t.integer :song_id, null: false

      t.timestamps null: false
    end

    add_index :lines, [:order, :song_id], unique: true
    add_index :lines, :song_id
  end
end
