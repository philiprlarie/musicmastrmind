json.extract! interpretation, *interpretation.attributes.keys

creator ||= nil
unless creator.nil?
  json.creator do
    json.partial!("api/users/user", user: creator)
  end
end
