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
    @lines = @song.lines
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
    fail
    # TODO implement deleting songs. Who should have control of this? administrators?
    # don't implement deleting songs yet
    # @song = Song.find(params[:id])
    # @song.destroy!
    # render :show
  end

  def index
    @songs = get_collection
    render json: @songs
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

  def get_collection
    return Song.all if params[:all] # probably should remove this at some point
    return Song.where(album_id: params[:album_id]) if params[:album_id]
    return Song.where(artist_id: params[:artist_id]) if params[:artist_id]
  end

end
