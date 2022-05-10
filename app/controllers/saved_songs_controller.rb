class SavedSongsController < ApplicationController

  def create
    audition_song = SavedSong.new(
      song_id: 4,
      user_id: 1
    )
    audition_song.save
    render json: audition_song.as_json
  end
  
end
