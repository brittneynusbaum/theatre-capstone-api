class SongsController < ApplicationController

  def index
    # binding.pry
    composers = params[:composer].split(",")
    shows = params[:show].split(",")
    genres = params[:genre].split(",")
    tempos = params[:tempo].split(",")
    sql = <<-SQL
      SELECT songs.* FROM songs
      JOIN songwriters on songs.songwriter_id = songwriters.id
      JOIN shows on songs.show_id = shows.id
      JOIN genres on songs.genre_id = genres.id
      JOIN tempos on songs.tempo_id = tempos.id
      WHERE  songwriters.composer = '#{composers[0]}'
      OR  songwriters.composer = '#{composers[1]}'
      OR  songwriters.composer = '#{composers[2]}'
      OR shows.title = '#{shows[0]}'
      OR shows.title = '#{shows[1]}'
      OR shows.title = '#{shows[2]}'
      OR genres.name = '#{genres[0]}'
      OR genres.name = '#{genres[1]}'
      OR genres.name = '#{genres[2]}'
      OR tempos.name = '#{tempos[0]}'
      OR tempos.name = '#{tempos[1]}'
      OR tempos.name = '#{tempos[2]}';
    SQL
    
    songs = ActiveRecord::Base.connection.select_all(sql)
    render json: songs.as_json
  end

  
  def show
    song = Song.find(params[:id])
    render json: song.as_json
  end
  
end


