json.array!(@interpretations) do |interpretation|
  json.partial!("interpretation", :interpretation => interpretation)
end

# not used in our code, but useful to have to make an API friendly site
