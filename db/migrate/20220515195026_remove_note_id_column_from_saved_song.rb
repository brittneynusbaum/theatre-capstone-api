class RemoveNoteIdColumnFromSavedSong < ActiveRecord::Migration[7.0]
  def change

    remove_column :saved_songs, :note_id, :integer
    
  end
end
