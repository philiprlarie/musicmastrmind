class Api::SongsController < ApplicationController
  def create

    if validate_form_data(params[:form_data])
      @song = Song.new(get_song_data)
      # create lines TODO all this
      render :show
    else
      render json: "didn't pass validation"
    end
  end

  def show
    @song = Song.find(params[:id])
    @lines = @song.lines
    @creator = @song.creator
    if @song
      render :show
    else
      render json: ["So such song"], status: 404
    end
  end

  def update
    @song = Song.find(params[:id])
    if user_permission?(song)
      if @song.update(song_params)
          render :show
      else
        render json: @song.errors.full_messages,
          status: :unprocessable_entity
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if user_permission?(song)
      @song.destroy!
      render :show
    end
  end

  def index
    @songs = get_collection
    render :index
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

  def user_permission?(song)
    if song.creator != current_user
      render json: "you don't have permission for this song",
        status: :unprocessable_entity
      return false
    else
      return true
    end
  end

  def get_collection
    return Song.all.includes(:artist) if params[:all] # TODO probably should remove this at some point
    if params[:album_id]
      return Song.where(album_id: params[:album_id]).includes(:artist)
    end
    if params[:artist_id]
      return Song.where(artist_id: params[:artist_id]).includes(:artist)
    end
  end

  def validate_form_data(form_data)
    # {"title"=>"Octopus's Garden", "artist_name"=>"The Beatles", "album_title"=>"Abbey Road", "track_number"=>"5"}
    debugger
    # set the artist and album to true so they can pass validation. If everything else passes validation, but the artist or album don't exist yet, we will create the new artist/album.
    @song = Song.new()
    @song.title = form_data["title"]
    artist = Artist.find_by_name(form_data["artist_name"])
    if artist
      album = artist.albums.find_by_name(form_data["album_title"])
      if !album
        album = Album.new()
    else
      artist = new Artist({ name: form_data["artist_name"] })
    album = Album.find_by_title(form_data["album_title"]).where()

    @song.track_number = form_data["track_number"].to_i
    fail
    # TODO fix all this
  end
end
