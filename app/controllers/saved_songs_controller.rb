class SavedSongsController < ApplicationController

  def create
    audition_song = SavedSong.new(
      song_id: params[:song_id],
      user_id: params[:user_id]
    )
    audition_song.save
    render json: audition_song.as_json
  end

  def index
    audition_songs = SavedSong.all
    render json: audition_songs.as_json
  end
  
end
