json.array!(@songs) do |song|
  json.partial!("song", song: song, artist: song.artist )
end
