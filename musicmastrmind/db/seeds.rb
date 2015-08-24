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
artist1 = Artist.create({
  name: "Arctic Monkies",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449434/wu94pngrsyopbebghxqw.jpg"
})
mardyBum = Song.create({
  title: "Mardy Bum",
  creator_id: user1.id,
  artist_id: artist1.id,
})
doIwantToKnow = Song.create({
  title: "Do I Wanna Know?",
  creator_id: user2.id,
  artist_id: artist1.id,
})




##################################### new artist
artist2 = Artist.create({
  name: "Grateful Dead",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449481/vtb9lecjnoo3ppsr9vsd.jpg"
})
artist3 = Artist.create({
  name: "Jet",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449573/mygpk5yzeu1bmy9epbl1.jpg"
})
artist4 = Artist.create({
  name: "Kings of Leon",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449685/fzef6ts9yv2gsuhmzgmb.jpg"
})
artist5 = Artist.create({
  name: "Led Zeppelin",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449796/fwvdq0njvtlxusk6cazs.jpg"
})
artist6 = Artist.create({
  name: "Pink Floyd",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449848/muaifvmznof1ysmrxeil.jpg"
})
artist7 = Artist.create({
  name: "Red Hot Chili Peppers",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449886/jcpf9fitibkl2qdwjbsf.jpg"
})
artist8 = Artist.create({
  name: "Steely Dan",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450002/hvr1sqxl2nh3cwndfz1x.jpg"
})

artist10 = Artist.create({
  name: "The Doors",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450185/qr3gloqmsuxu65xibrwb.jpg"
})
artist12 = Artist.create({
  name: "Weezer",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450325/fp9ce8rfp1tqwnrdc5lw.jpg"
})
artist11 = Artist.create({
  name: "Yes",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450414/kscjitwpfdrte92v7dl9.jpg"
})




##################################### new artist
artist9 = Artist.create({
  name: "The Beatles",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450083/c7oc3xeboknfkyziasnd.jpg"
})

song1 = Song.create({
  title: "Because",
  writer: 'Lennon–McCartney',
  creator_id: user1.id,
  artist_id: artist9.id,
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
})

song3 = Song.create({
  title: "Maxwell's Silver Hammer",
  writer: "Lennon–McCartney",
  creator_id: user2.id,
  artist_id: artist9.id,
})
