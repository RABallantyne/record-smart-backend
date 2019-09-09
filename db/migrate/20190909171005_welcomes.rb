class Welcomes < ActiveRecord::Migration[5.2]
  def change
    create_table :welcomes do |t|
      t.string :welcome_message

      t.timestamps
    end
  end
end
