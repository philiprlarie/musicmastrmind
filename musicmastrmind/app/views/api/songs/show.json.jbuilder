json.extract! @song, :id, :title, :created_at, :updated_at

json.lines do
  json.array! @song.lines do |line|
    json.extract! line, :id, :body, :order, :song_id
  end
end
