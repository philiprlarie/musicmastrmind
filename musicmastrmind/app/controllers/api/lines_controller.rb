class Api::LinesController < ApplicationController
  def index
    @lines = Line.where(song_id: params[:song_id])
    render :index
  end

  def create
    @line = Line.new(line_params)
    if user_permission?(@line)
      if @line.save
          render :show
      else
        render json: @line.errors.full_messages,
          status: :unprocessable_entity
      end
    end
  end

  def show
    @line = Line.find(params[:id])
    @interpretations =
      Interpretation.includes(:creator).where("line_id = ?", @line.id)

    if @line
      render :show
    else
      render json: ["So such line"], status: 404
    end
  end

  def update
    @line = Line.find(params[:id])
    if user_permission?(@line)
      if @line.update(line_params.permit(:body, :order))
          render :show
      else
        render json: @line.errors.full_messages,
          status: :unprocessable_entity
      end
    end
  end

  def destroy
    @line = Line.find(params[:id])
    if user_permission?(@line)
      @line.destroy!
      render :show
    end
  end

  private
  def line_params
    params.require(:line).permit(:body, :order, :song_id)
  end

  def user_permission?(line)
    if line.song.creator != current_user
      render json: "you don't have permission for this line",
        status: :unprocessable_entity
      return false
    else
      return true
    end
  end
end
