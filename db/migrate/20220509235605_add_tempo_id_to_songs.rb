class AddTempoIdToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :tempo_id, :integer
  end
end
