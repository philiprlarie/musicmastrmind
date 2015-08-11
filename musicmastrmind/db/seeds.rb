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

song1 = Song.create({ title: "Because",
    writer: 'Lennon–McCartney',
    creator_id: 1,
    artist_id: 1,
    album_id: 1,
    track_number: 8
})
