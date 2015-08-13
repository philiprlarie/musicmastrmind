class Api::SongsController < ApplicationController
  def create
    @song = Song.new(song_params)
    if @song.save
        render :show
    else
      render json: @song.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])

    if @song
      render :show
    else
      render json: ["So such song"], status: 404
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
        render :show
    else
      render json: @song.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def destroy
  end

  def index
  end

  private
  def song_params
    params.require(:song).permit(
      :title,
      :writer,
      :track_number,
      :creator_id,
      :artist_id,
      :album_id
    )
  end
end


# From trello clone solutions
# module Api
#   class BoardsController < ApiController
#     def create
#       @board = current_user.boards.new(board_params)
#
#       if @board.save
#         render json: @board
#       else
#         render json: @board.errors.full_messages, status: :unprocessable_entity
#       end
#     end
#
#     def destroy
#       @board = current_user.boards.find(params[:id])
#       @board.try(:destroy)
#       render json: {}
#     end
#
#     def index
#       @boards = current_user.boards
#       render json: @boards
#     end
#
#     def show
#       @board = Board.includes(:members, lists: :cards).find(params[:id])
#
#       if @board.is_member?(current_user)
#         render :show
#       else
#         render json: ["You aren't a member of this board"], status: 403
#       end
#     end
#
#     private
#
#     def board_params
#       params.require(:board).permit(:title)
#     end
#   end
# end
