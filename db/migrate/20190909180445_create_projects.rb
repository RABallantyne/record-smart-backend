class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_notes
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
