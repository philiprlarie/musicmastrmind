class Api::SongsController < ApplicationController
  def create

    if validate_form_data(params[:form_data])
      render :show
    else
      render json: @errors, status: :unprocessable_entity
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
    if user_permission?(@song)
      if @song.update(song_params)
          render :show
      else
        render json: @song.errors.full_messages, status: :unprocessable_entity
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
    # {"song"=>{"title"=>"Test Song", "artist_name"=>"Test Artist"}, "lines"=>[{"body"=>"first line"}, {"body"=>"second Line"}, {"body"=>"third line"}, {"body"=>"fourth line"}]}
    song_data = form_data["song"]
    lines_data = form_data["lines"]
    @song = Song.new()
    @song.creator_id = current_user.id
    @song.title = song_data["title"]

    artist = Artist.find_by_name(song_data["artist_name"])
    artist ||= Artist.new({ name: song_data["artist_name"] })
    @song.artist = artist

    lines_data.each_with_index do |line, idx|
      new_line = Line.new({ body: line["body"], order: idx + 1 })
      new_line.song = @song
      @song.lines << new_line
    end

    errors = []
    artist.valid?
    errors += artist.errors.full_messages
    @song.valid?
    errors += @song.errors.full_messages
    @song.lines.each do |line|
      line.valid?
      errors += line.errors.full_messages
    end

    if errors.empty?
      @song.save
      return true
    else
      return false
    end

  end
end
