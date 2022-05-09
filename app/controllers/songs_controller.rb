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
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


