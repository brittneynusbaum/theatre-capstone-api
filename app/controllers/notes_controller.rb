class NotesController < ApplicationController

  def index
    @audition_songs = SavedSong.where(user_id: current_user.id)
    p current_user
    # notes = []
    # audition_songs.each do |audition_song|
    #   notes << Note.where(saved_song_id: audition_song.id)
    # end
    render template: "saved_songs/index"
  end

  def create
    note = Note.new(
      description: params[:description],
      saved_song_id: params[:saved_song_id],
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
