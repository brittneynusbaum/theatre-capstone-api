class SongsController < ApplicationController

  def index
    # binding.pry
    composers = params[:composer].split(",")
    shows = params[:show].split(",")
    sql = <<-SQL
      SELECT songs.* FROM songs
      JOIN songwriters on songs.songwriter_id = songwriters.id
      JOIN shows on songs.show_id = shows.id
      WHERE  songwriters.composer = '#{composers[0]}'
      OR  songwriters.composer = '#{composers[1]}'
      OR  songwriters.composer = '#{composers[2]}'
      OR shows.title = '#{shows[0]}'
      OR shows.title = '#{shows[1]}'
      OR shows.title = '#{shows[2]}';
    SQL
    
    songs = ActiveRecord::Base.connection.select_all(sql)

    render json: songs.as_json
    # songwriter = Songwriter.find_by(composer: params[:composer]) 
    # songwriters = Songwriter.all
    # p songwriters
    # show = Show.find_by(title: params[:title])
    
    # composer = params[:composer].split(",")
    # # p composer.length
    # # p params[:title]
    
    # if composer.length > 1
    #   songwriter1 = Songwriter.find_by(composer: composer[0]) # need to send array of composers to next if statement but
    #   songwriter2 = Songwriter.find_by(composer: composer[1]) 
      
    # else
    #   songwriter = Songwriter.find_by(composer: composer) 
      
    # end

    # if songwriter != nil && show != nil
    #   songwriter = Song.where(songwriter_id: songwriter.id)
    #   show = Song.where(show_id: show.id)
    #   songs = (songwriter + show).uniq
    #   render json: songs.as_json
    # elsif songwriter == nil && show != nil
    #   show = Song.where(show_id: show.id)
    #   rendder json: show.as_json
    # elsif show == nil && songwriter != nil
    #   songwriter = Song.where(songwriter_id: songwriter.id)
    #   render json: songwriter.as_json
    # end
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


