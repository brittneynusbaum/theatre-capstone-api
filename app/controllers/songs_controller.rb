class SongsController < ApplicationController

  def index
    songwriter = Songwriter.find_by(composer: params[:composer]) 
    # songwriters = Songwriter.all
    # p songwriters
    songs = Song.where(songwriter_id: songwriter.id)
    render json: songs.as_json
  end

  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


