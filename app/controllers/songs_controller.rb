class SongsController < ApplicationController

  def index
    # songwriter = Songwriter.find_by(composer: params[:composer]) 
    # songwriters = Songwriter.all
    # p songwriters
    show = Show.find_by(title: params[:title])
    
    composer = params[:composer].split(",")
    # p composer.length
    
    # p params[:title]
    
    if composer.length > 1
      songwriter1 = Songwriter.find_by(composer: composer[0]) 
      songwriter2 = Songwriter.find_by(composer: composer[1]) 
    else
      songwriter = Songwriter.find_by(composer: composer) 
    end

    if songwriter != nil && show != nil
      songwriter = Song.where(songwriter_id: songwriter.id)
      show = Song.where(show_id: show.id)
      songs = (songwriter + show).uniq
      render json: songs.as_json
    elsif songwriter == nil && show != nil
      show = Song.where(show_id: show.id)
      rendder json: show.as_json
    elsif show == nil && songwriter != nil
      songwriter = Song.where(songwriter_id: songwriter.id)
      render json: songwriter.as_json
    end
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


