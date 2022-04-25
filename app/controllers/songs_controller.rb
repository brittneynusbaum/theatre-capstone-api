class SongsController < ApplicationController

  def index
    songwriter = Songwriter.where(songwriter: params[:songwriter])
    songs = Song.where(songwriter_id: [:songwriter.id])
    render json: songs.as_json
  end

  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


