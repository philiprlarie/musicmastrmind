# extracts all the elements form a artist
json.extract! artist, :name

songs ||= nil
unless songs.nil?
  json.songs(songs) do |song|
    json.extract! song, *song.attributes.keys
  end
end
