# TODO add a ton of seed data. At least 5 albums for every genre

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#
user1 = User.create({
  username: "user1",
  email: 'user1@gmail.com',
  password: 'password'
})
user2 = User.create({
  username: "user2",
  email: 'user2@gmail.com',
  password: 'password'
})
user3 = User.create({
  username: "user3",
  email: 'user3@gmail.com',
  password: 'password'
})
user4 = User.create({
  username: "user4",
  email: 'user4@gmail.com',
  password: 'password'
})

song1 = Song.create({
  title: "Because",
  writer: 'Lennon–McCartney',
  creator_id: user1.id,
  artist_id: 1,
  album_id: 1,
  track_number: 8
})
song2 = Song.create({
  title: "Something",
  writer: 'George Harrison',
  creator_id: user1.id,
  artist_id: 1,
  album_id: 1,
  track_number: 2
})
song3 = Song.create({
  title: "Maxwell's Silver Hammer",
  writer: "Lennon–McCartney",
  creator_id: user2.id,
  artist_id: 1,
  album_id: 1,
  track_number: 3
})


line1 = Line.create({
  body: "Because the world is round it turns me on
Because the world is round",
  order: 1,
  song_id: song1.id
})
line2 = Line.create({
  body: "Because the wind is high it blows my mind
Because the wind is high",
  order: 2,
  song_id: song1.id
})
line3 = Line.create({
  body: "Love is old, love is new
Love is all, love is you",
  order: 3,
  song_id: song1.id
})
line4 = Line.create({
  body: "Because the sky is blue, it makes me cry
Because the sky is blue",
  order: 4,
  song_id: song1.id
})

interpretation1 = Interpretation.create({
  body: "The world is round. Discovered by Columbus 1492",
  line_id: line1.id,
  creator_id: user2.id
})
interpretation2 = Interpretation.create({
  body: "McCartney is one frisky fellow",
  line_id: line1.id,
  creator_id: user3.id
})
interpretation2 = Interpretation.create({
  body: "Great line!",
  line_id: line1.id,
  creator_id: user1.id
})
interpretation2 = Interpretation.create({
  body: "Very great line!!",
  line_id: line1.id,
  creator_id: user4.id
})
interpretation2 = Interpretation.create({
  body: "The wind is the high one now?",
  line_id: line2.id,
  creator_id: user3.id
})
