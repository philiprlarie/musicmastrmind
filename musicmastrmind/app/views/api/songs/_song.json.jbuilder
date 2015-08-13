# extracts all the elements form a song
json.extract! song, *song.attributes.keys

lines ||= nil
unless lines.nil?
  json.lines(lines) do |line|
    json.partial!("api/lines/line", :line => line)
  end
end
