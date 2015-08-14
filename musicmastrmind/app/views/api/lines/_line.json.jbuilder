# extracts all the elements form a line
json.extract! line, *line.attributes.keys

interpretations ||= nil
unless interpretations.nil?
  json.interpretations(interpretations) do |interpretation|
    json.partial!("api/interpretations/interpretation", interpretation: interpretation)
  end
end
