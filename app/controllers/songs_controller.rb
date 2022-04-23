class SongsController < ApplicationController

  def index
    songs = Song.where(songwriter: params[:songwriter])
    render json: songs.as_json
  end

  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


