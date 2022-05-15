class SavedSongsController < ApplicationController

  before_action :authenticate_user

  def create
    audition_song = SavedSong.new(
      song_id: params[:song_id],
      user_id: params[:user_id]
    )
    audition_song.save
    render json: audition_song.as_json
  end

  def index
    @audition_songs = SavedSong.where(user_id: current_user.id)
    # saved = []
    # audition_songs.each do |audition_song|
    #   saved << Song.find_by(id: audition_song.song_id)
    # end
    render template: "saved_songs/index"
  end
  
end
