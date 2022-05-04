class ShowsController < ApplicationController

  def index
    shows = Show.all
    render json: shows.as_json
  end
end
