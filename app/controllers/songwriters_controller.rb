class SongwritersController < ApplicationController

  def index
    songwriters = Songwriter.all
    render json: songwriters.as_json
  end
  
end
