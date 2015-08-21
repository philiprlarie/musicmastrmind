class Api::InterpretationsController < ApplicationController
  def index
    @interpretations = Interpretation.where(line_id: params[:line_id])
    render :index
  end

  def create
    @interpretation = Interpretation.new(interpretation_params)
    @interpretation.creator_id = current_user.id
    @creator = @interpretation.creator
    if @interpretation.save
        render :show
    else
      render json: @interpretation.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def show
    @interpretation = Interpretation.find(params[:id])
    @creator = @interpretation.creator
    if @interpretation
      render :show
    else
      render json: ["So such interpretation"], status: 404
    end
  end

  def update
    @interpretation = Interpretation.find(params[:id])
    if user_permission?(@interpretation)
      if @interpretation.update(interpretation_params)
          render :show
      else
        render json: @interpretation.errors.full_messages,
          status: :unprocessable_entity
      end
    end
  end

  def destroy
    @interpretation = Interpretation.find(params[:id])
    if user_permission?(@interpretation)
      @interpretation.destroy!
      render :show
    end
  end

  private
  def interpretation_params
    params.require(:interpretation).permit(:body, :line_id)
  end

  def user_permission?(interpretation)
    if interpretation.creator != current_user
      render json: "you don't have permission for this interpretation",
        status: :unprocessable_entity
      return false
    else
      return true
    end
  end
end
