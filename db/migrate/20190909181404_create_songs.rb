class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.text :song_note
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
