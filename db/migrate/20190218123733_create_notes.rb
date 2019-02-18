class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :owner_id
      t.string :note_title
      t.text :note_body
      t.integer :note_category_id

      t.timestamps
    end
  end
end
