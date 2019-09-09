class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :part_name
      t.text :part_note
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
