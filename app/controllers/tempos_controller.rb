class TemposController < ApplicationController

  def index
    tempos = Tempo.all
    render json: tempos.as_json
  end
  
end

