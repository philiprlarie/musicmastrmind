# extracts all the elements form a artist
json.extract! artist, *artist.attributes.keys

songs ||= nil
unless songs.nil?
  json.songs(songs) do |song|
    json.partial!("api/songs/song", song: song)
  end
end
