class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :songwriter_id
      t.integer :show_id

      t.timestamps
    end
  end
end
