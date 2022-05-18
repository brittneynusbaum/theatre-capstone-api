class SavedSongsController < ApplicationController

  before_action :authenticate_user

  def create
    audition_song = SavedSong.new(
      song_id: params[:song_id],
      user_id: current_user.id
    )
    audition_song.save
    render json: audition_song.as_json
  end

  def index
    @audition_songs = SavedSong.where(user_id: current_user.id)
    render template: "saved_songs/index"
  end
  
  def destroy
    audition_song = SavedSong.find(params[:id])
    audition_song.destroy
    render json: {message: "song removed!"}
  end
  
end
