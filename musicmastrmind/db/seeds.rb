# TODO add a ton of seed data. At least 5 albums for every genre

user1 = User.create({
  username: "EvilGenius",
  email: 'EvilGenius@gmail.com',
  password: '!1password'
})
user2 = User.create({
  username: "Mr. Music Man",
  email: 'MrMusicMan@gmail.com',
  password: '!1password'
})
user3 = User.create({
  username: "RockLover",
  email: 'RockLover@gmail.com',
  password: '!1password'
})
user4 = User.create({
  username: "Rock4Lyfe",
  email: 'Rock4Lyfe@gmail.com',
  password: '!1password'
})




##################################### new artist
artist1 = Artist.create({ name: "Arctic Monkies" })
whatervPeopleSay = Album.create({
  title: "Whatever People Say I Am, That's What I'm Not",
  release_year: 2006,
  image_url: "http://vignette3.wikia.nocookie.net/lyricwiki/images/6/67/Arctic_Monkeys_-_Whatever_People_Say_I_Am,_That's_What_I'm_Not.jpg/revision/latest?cb=20100702190727",
  artist_id: artist1.id
})
am = Album.create({
  title: "AM",
  release_year: 2013,
  image_url: "https://upload.wikimedia.org/wikipedia/en/0/04/Arctic_Monkeys_-_AM.png",
  artist_id: artist1.id
})
mardyBum = Song.create({
  title: "Mardy Bum",
  creator_id: user1.id,
  artist_id: artist1.id,
  album_id: whatervPeopleSay.id,
  track_number: 9
})
doIwantToKnow = Song.create({
  title: "Do I Wanna Know?",
  creator_id: user2.id,
  artist_id: artist1.id,
  album_id: am.id,
  track_number: 1
})




##################################### new artist
artist2 = Artist.create({ name: "Grateful Dead" })
americanBeauty = Album.create({
  title: "Whatever People Say I Am, That's What I'm Not",
  release_year: 1970,
  image_url: "http://ecx.images-amazon.com/images/I/61HW7HZ8SAL._SS500_.jpg",
  artist_id: artist2.id
})

artist3 = Artist.create({ name: "Jet" })
artist4 = Artist.create({ name: "Kings of Leon" })
artist5 = Artist.create({ name: "Led Zeppelin" })
artist6 = Artist.create({ name: "Pink Floyd" })
artist7 = Artist.create({ name: "Red Hot Chili Peppers" })
artist8 = Artist.create({ name: "Steely Dan" })

artist10 = Artist.create({ name: "The Doors" })
artist12 = Artist.create({ name: "Weezer" })
artist11 = Artist.create({ name: "Yes" })




##################################### new artist
artist9 = Artist.create({ name: "The Beatles" })
abbyRoad = Album.create({
  title: "Abbey Road",
  release_year: 1969,
  image_url: "http://d817ypd61vbww.cloudfront.net/sites/default/files/styles/media_responsive_widest/public/tile/image/original_593.jpg?itok=lhwAxXPe",
  artist_id: artist9.id
})

song1 = Song.create({
  title: "Because",
  writer: 'Lennon–McCartney',
  creator_id: user1.id,
  artist_id: artist9.id,
  album_id: abbyRoad.id,
  track_number: 8
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
interpretation3 = Interpretation.create({
  body: "Great line!",
  line_id: line1.id,
  creator_id: user1.id
})
interpretation4 = Interpretation.create({
  body: "Very great line!!",
  line_id: line1.id,
  creator_id: user4.id
})
interpretation5 = Interpretation.create({
  body: "The wind is the high one now?",
  line_id: line2.id,
  creator_id: user3.id
})

song2 = Song.create({
  title: "Something",
  writer: 'George Harrison',
  creator_id: user1.id,
  artist_id: artist9.id,
  album_id: abbyRoad.id,
  track_number: 2
})

song3 = Song.create({
  title: "Maxwell's Silver Hammer",
  writer: "Lennon–McCartney",
  creator_id: user2.id,
  artist_id: artist9.id,
  album_id: abbyRoad.id,
  track_number: 3
})
