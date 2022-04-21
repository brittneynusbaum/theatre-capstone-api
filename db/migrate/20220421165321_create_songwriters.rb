class CreateSongwriters < ActiveRecord::Migration[7.0]
  def change
    create_table :songwriters do |t|
      t.string :composer
      t.string :lyrics

      t.timestamps
    end
  end
end
