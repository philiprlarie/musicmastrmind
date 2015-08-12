class Api::LinesController < ApplicationController
  def index
    @lines = Line.where(song_id: params[:song_id])
    render json: @lines
  end


end
