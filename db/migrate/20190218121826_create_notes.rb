class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :note_id
      t.integer :owner_id
      t.string :note_title
      t.text :note_body
      t.integer :note_category

      t.timestamps
    end
  end
end
