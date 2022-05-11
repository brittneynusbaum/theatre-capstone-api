class NotesController < ApplicationController

  def index
    notes = Note.where(user_id: current_user.id)
    render json: notes.as_json
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
    note.save
    render json: note.as_json
  end

end
