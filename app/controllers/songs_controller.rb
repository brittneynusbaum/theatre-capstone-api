class SongsController < ApplicationController

  def index
    songwriter = Songwriter.find_by(composer: params[:composer]) 
    # songwriters = Songwriter.all
    # p songwriters
    show = Show.find_by(title: params[:title])
    p songwriter
    p show
    songs1 = Song.where(songwriter_id: songwriter.id)
    songs2 = Song.where(show_id: show.id)
    # songs = Song.all
    songs = (songs1 + songs2).uniq
    render json: songs.as_json
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


