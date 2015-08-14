json.array!(@lines) do |line|
  json.partial!("line", :line => line)
end

# not used in our code, but useful to have to make an API friendly site
