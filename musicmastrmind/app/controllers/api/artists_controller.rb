class Api::ArtistsController < ApplicationController
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
        render :show
    else
      render json: @artist.errors.full_messages,
        status: :unprocessable_entity
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    if @artist
      render :show
    else
      render json: ["So such artist"], status: 404
    end
  end

  def update
    @artist = Artist.find(params[:id])
    if user_permission?
      if @artist.update(artist_params)
          render :show
      else
        render json: @artist.errors.full_messages,
          status: :unprocessable_entity
      end
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    if user_permission?
      @artist.destroy!
      render :show
    end
  end

  def index
    @artists = get_collection
    render :index
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def user_permission?
    if !user.is_moderator?
      render json: "you must be a moderator to do this",
        status: :unprocessable_entity
      return false
    else
      return true
    end
  end

  def get_collection
    return Artist.all if params[:all]
    Artist.where("upper(name) LIKE ?", params[:letter].upcase + '%') if params[:letter]
  end

end
