class AddindNotesIdToSavedSongsTable < ActiveRecord::Migration[7.0]
  def change
    
    add_column :saved_songs, :note_id, :integer
    
  end
end
