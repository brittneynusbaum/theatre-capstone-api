class SongsController < ApplicationController

  def index
    songwriter = Songwriter.find_by(composer: params[:composer]) 
    # songwriters = Songwriter.all
    # p songwriters
    show = Show.find_by(title: params[:title])
    p songwriter
    p show
    # songs = Song.where(songwriter_id: songwriter.id).or(Song.where(show_id: show.id || show_id: nil)
    songs = Song.where(songwriter_id: params[:songwriter.id]).or(Song.where(show_id: params[:show.id]))
    # songs = Song.all
    render json: songs.order(:show_id).as_json
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


