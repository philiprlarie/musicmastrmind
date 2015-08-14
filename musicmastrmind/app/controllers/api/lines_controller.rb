class Api::LinesController < ApplicationController
  def index
    @lines = Line.where(song_id: params[:song_id])
    render json: @lines
  end

  def create
    @line = Line.new(line_params)
    if @line.save
        render :show
    else
      render json: @line.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def show
    @line = Line.find(params[:id])

    if @line
      render :show
    else
      render json: ["So such line"], status: 404
    end
  end

  def update
    @line = Line.find(params[:id])
    debugger
    if @line.update(line_params)
        render :show
    else
      render json: @line.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def destroy
    fail
    # TODO add destroy functionality for lines? maybe we want this. maybe songs should be fully formed and lines should be uneditably once songs are created/ except by moderators?
    # don't implement deleting lines yet
    # @line = Line.find(params[:id])
    # @line.destroy!
    # render :show
  end

  private
  def line_params
    params.require(:line).permit(:body, :order, :song_id)
  end
end
