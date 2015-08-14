class Api::InterpretationsController < ApplicationController
  def index
    @interpretations = Interpretation.where(line_id: params[:line_id])
    render json: @interpretations
  end

  def create
    @interpretation = Interpretation.new(interpretation_params)
    if @interpretation.save
        render :show
    else
      render json: @interpretation.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def show
    @interpretation = Interpretation.find(params[:id])

    if @interpretation
      render :show
    else
      render json: ["So such interpretation"], status: 404
    end
  end

  # TODO only allow update certain attributes
  def update
    @interpretation = Interpretation.find(params[:id])
    if @interpretation.update(interpretation_params)
        render :show
    else
      render json: @interpretation.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def destroy
    @interpretation = Interpretation.find(params[:id])
    @interpretation.destroy!
    render :show
  end

  private
  def interpretation_params
    params.require(:interpretation).permit(:body, :creator_id, :song_id)
  end
end

!!!!!!!!!!!!!!!!!!!! this is reference junk. delete when done
class Api::LinesController < ApplicationController


end
