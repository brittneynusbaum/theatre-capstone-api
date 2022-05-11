class UpdateSongIdToSavedSondId < ActiveRecord::Migration[7.0]
  def change
    rename_column :notes, :song_id, :saved_song_id
  end
end
