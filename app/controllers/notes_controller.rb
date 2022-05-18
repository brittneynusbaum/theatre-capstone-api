class NotesController < ApplicationController

  def index
    @audition_songs = SavedSong.where(user_id: current_user.id)
    render template: "saved_songs/index"
  end

  def create
    note = Note.new(
      description: params[:new_note][:description],
      saved_song_id: params[:id],
      user_id: current_user.id
    )
    note.save
    render json: note.as_json
  end

  def update
    note = Note.find(params[:id])
    note.description = params[:description] || note.description
    note.saved_song_id = params[:saved_song_id] || note.saved_song_id
    note.save
    render json: note.as_json
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json: {message: "Note deleted successfully!"}
  end
  
end
