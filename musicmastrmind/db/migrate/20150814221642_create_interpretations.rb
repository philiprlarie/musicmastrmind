class CreateInterpretations < ActiveRecord::Migration
  def change
    create_table :interpretations do |t|
      t.text :body, null: false
      t.integer :line_id, null: false
      t.integer :creator_id, null: false

      t.timestamps null: false
    end

    add_index :interpretations, :creator_id
    add_index :interpretations, :line_id
  end
end
