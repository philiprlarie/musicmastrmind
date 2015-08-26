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
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440460961/wu94pngrsyopbebghxqw.jpg",
  created_at: 10.days.ago
})
mardyBum = Song.create({
  title: "Mardy Bum",
  creator_id: user1.id,
  artist_id: artist1.id,
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440492115/whatever-people-say-i-am-thats-what-im-not_yoyypy.jpg",
  created_at: 10.days.ago
})
line1 = Line.create({
  body: "Now then Mardy Bum
I see your frown
And it's like looking down the barrel of a gun
And it goes off
And out come all these words
Oh there's a very pleasant side to you
A side I much prefer",
  order: 1,
  song_id: mardyBum.id
})
line2 = Line.create({
  body: "It's one that laughs and jokes around
Remember cuddles in the kitchen
Yeah, to get things off the ground
And it was up, up and away
Oh, but it's right hard to remember
That on a day like today when you're all argumentative
And you've got the face on",
  order: 2,
  song_id: mardyBum.id
})
line3 = Line.create({
  body: "Well now then Mardy Bum
Oh I'm in trouble again, aren't I?
I thought as much
Cause you turned over there
Pulling that silent disappointment face
The one that I can't bear",
  order: 3,
  song_id: mardyBum.id
})
line4 = Line.create({
  body: "Yeah I'm sorry I was late
Well I missed the train
And then the traffic was a state
And I can't be arsed to carry on in this debate
That reoccurs, oh when you say I don't care
Well of course I do, yeah I clearly do!",
  order: 4,
  song_id: mardyBum.id
})
interpretation1 = Interpretation.create({
  body: '"...cuddles"',
  line_id: line2.id,
  creator_id: user2.id,
  created_at: 9.days.ago
})
interpretation2 = Interpretation.create({
  body: "Ah, young love",
  line_id: line2.id,
  creator_id: user3.id,
  created_at: 8.days.ago
})
interpretation3 = Interpretation.create({
  body: '"Mardy Bum" is British slang for girlfriend.',
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 8.days.ago
})
interpretation4 = Interpretation.create({
  body: "He loves her, why can't she see that!",
  line_id: line4.id,
  creator_id: user4.id,
  created_at: 2.days.ago
})

doIwantToKnow = Song.create({
  title: "Do I Wanna Know?",
  creator_id: user2.id,
  artist_id: artist1.id,
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440491836/arctic-monkeys-am_nxbvxp.jpg",
  created_at: 14.days.ago
})
line1 = Line.create({
  body: "Have you got colour in your cheeks?
Do you ever get that fear that you can't shift
The type that sticks around like something in your teeth?
Are there some aces up your sleeve?
Have you no idea that you're in deep?
I dreamt about you nearly every night this week
How many secrets can you keep?
'Cause there's this tune I found that makes me think of you somehow and I play it on repeat
Until I fall asleep
Spilling drinks on my settee",
  order: 1,
  song_id: doIwantToKnow.id
})
line2 = Line.create({
  body: "(Do I wanna know)
If this feeling flows both ways?
(Sad to see you go)
Was sort of hoping that you'd stay
(Baby we both know)
That the nights were mainly made for saying things that you can't say tomorrow day",
  order: 2,
  song_id: doIwantToKnow.id
})
line3 = Line.create({
  body: "Crawling back to you",
  order: 3,
  song_id: doIwantToKnow.id
})
line4 = Line.create({
  body: "Ever thought of calling when you've had a few?
'Cause I always do
Maybe I'm too busy being yours to fall for somebody new
Now I've thought it through",
  order: 4,
  song_id: doIwantToKnow.id
})
interpretation4 = Interpretation.create({
  body: "set·tee (sĕ-tē′) n.
1. A long wooden bench with a back.
2. A small or medium-sized sofa.",
  line_id: line1.id,
  creator_id: user4.id,
  created_at: 10.days.ago
})
interpretation5 = Interpretation.create({
  body: "Curiosity killed the cat.",
  line_id: line2.id,
  creator_id: user3.id,
  created_at: 3.days.ago
})




##################################### new artist
artist2 = Artist.create({
  name: "Grateful Dead",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461204/vtb9lecjnoo3ppsr9vsd.jpg"
})
ripple = Song.create({
  title: "Ripple",
  creator_id: user3.id,
  artist_id: artist2.id,
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440492954/hqdefault_oc8vl3.jpg",
  created_at: 78.days.ago
})
line1 = Line.create({
  body: "If my words did glow with the gold of sunshine
And my tunes were played on the harp unstrung
Would you hear my voice come through the music
Would you hold it near as it were your own?",
  order: 1,
  song_id: ripple.id
})
line2 = Line.create({
  body: "It's a hand-me-down, the thoughts are broken
Perhaps they're better left unsung
I don't know, don't really care
Let there be songs to fill the air",
  order: 2,
  song_id: ripple.id
})
line3 = Line.create({
  body: "Ripple in still water
When there is no pebble tossed
Nor wind to blow",
  order: 3,
  song_id: ripple.id
})
line4 = Line.create({
  body: "Reach out your hand if your cup be empty
If your cup is full may it be again
Let it be known there is a fountain
That was not made by the hands of men",
  order: 4,
  song_id: ripple.id
})
line5 = Line.create({
  body: "There is a road, no simple highway
Between the dawn and the dark of night
And if you go no one may follow
That path is for your steps alone",
  order: 4,
  song_id: ripple.id
})
line6 = Line.create({
  body: "Ripple in still water
When there is no pebble tossed
Nor wind to blow",
  order: 4,
  song_id: ripple.id
})
line7 = Line.create({
  body: "You who choose to lead must follow
But if you fall you fall alone
If you should stand then who's to guide you?
If I knew the way I would take you home",
  order: 4,
  song_id: ripple.id
})
interpretation4 = Interpretation.create({
  body: "Gotta love The Dead.",
  line_id: line1.id,
  creator_id: user2.id,
  created_at: 40.days.ago
})
interpretation5 = Interpretation.create({
  body: "^AMC's the walking dead.",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 32.days.ago
})




##################################### new artist
artist3 = Artist.create({
  name: "Jet",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449573/mygpk5yzeu1bmy9epbl1.jpg"
})
lazyGun = Song.create({
  title: "Lazy Gun",
  creator_id: user4.id,
  artist_id: artist3.id,
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440566774/jetty_tpaza0.jpg"
})
line1 = Line.create({
  body: "Lazy gun messed up my television yeah
You get no younger from those colours in your hair
Teach your kids how they're all young enough to fight
Talk about the answer tell them they're all right",
  order: 1,
  song_id: lazyGun.id
})
line2 = Line.create({
  body: "Change nothing
Futures in
Close the door
Wear a name
Be the same
Take some more",
  order: 2,
  song_id: lazyGun.id
})
line3 = Line.create({
  body: "Lazy gun messed up my television fun
Shoot the shotgun but the war is never won
Who's the enemy, who's sucking on my sun
Im the only one left now you've taken all my fun",
  order: 3,
  song_id: lazyGun.id
})
line4 = Line.create({
  body: "Change nothing
Futures in
Close the door
Wear a name
Be the same
Take some more
",
  order: 4,
  song_id: lazyGun.id
})

interpretation4 = Interpretation.create({
  body: "Lazy Gun, more line Lazy Bum. Get a job you hippies.",
  line_id: line1.id,
  creator_id: user2.id
})
interpretation5 = Interpretation.create({
  body: '"who\'s sucking on my sun." WTF does that mean?',
  line_id: line1.id,
  creator_id: user1.id
})




##################################### new artist
artist4 = Artist.create({
  name: "Kings of Leon",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449685/fzef6ts9yv2gsuhmzgmb.jpg"
})
sexOnFire = Song.create({
  title: "Sex on Fire",
  creator_id: user4.id,
  artist_id: artist4.id
})
line1 = Line.create({
  body: "Lay where you're laying
Don't make a sound
I know they're watching
They're watching",
  order: 1,
  song_id: sexOnFire.id
})
line2 = Line.create({
  body: "All the commotion
the kiddie like play
Has people talking
Talking",
  order: 2,
  song_id: sexOnFire.id
})
line3 = Line.create({
  body: "You
Your sex is on fire",
  order: 3,
  song_id: sexOnFire.id
})
line4 = Line.create({
  body: "The dark of the alley
The break of the day
Head while I'm driving
I'm driving",
  order: 4,
  song_id: sexOnFire.id
})
line4 = Line.create({
  body: "The dark of the alley
The break of the day
Head while I'm driving
I'm driving",
  order: 4,
  song_id: sexOnFire.id
})

interpretation4 = Interpretation.create({
  body: "Kings of Leon knows about the NSA.",
  line_id: line1.id,
  creator_id: user2.id
})
interpretation5 = Interpretation.create({
  body: 'Big brother is always watching.',
  line_id: line1.id,
  creator_id: user1.id
})




##################################### new artist
artist5 = Artist.create({
  name: "Led Zeppelin",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461370/classic-led-zeppelin-wallpaper-with-jimmy-page-in-front_fdiyzm.jpg"
})
lemonSong = Song.create({
  title: "Lemon Song",
  creator_id: user4.id,
  artist_id: artist4.id
})
line1 = Line.create({
  body: "I should have quit you, long time ago. (X2)
I wouldn't be here, my children, down on this killin' floor.",
  order: 1,
  song_id: sexOnFire.id
})
line2 = Line.create({
  body: "I should have listened, baby, to my second mind (X2)
Everytime I go away and leave you, darling, you send me the blues way down the line.",
  order: 2,
  song_id: sexOnFire.id
})
line3 = Line.create({
  body: "You
Your sex is on fire",
  order: 3,
  song_id: sexOnFire.id
})
line4 = Line.create({
  body: "The dark of the alley
The break of the day
Head while I'm driving
I'm driving",
  order: 4,
  song_id: sexOnFire.id
})
line4 = Line.create({
  body: "The dark of the alley
The break of the day
Head while I'm driving
I'm driving",
  order: 4,
  song_id: sexOnFire.id
})

interpretation4 = Interpretation.create({
  body: "Kings of Leon knows about the NSA.",
  line_id: line1.id,
  creator_id: user2.id
})
interpretation5 = Interpretation.create({
  body: 'Big brother is always watching.',
  line_id: line1.id,
  creator_id: user1.id
})




##################################### new artist
artist6 = Artist.create({
  name: "Pink Floyd",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449848/muaifvmznof1ysmrxeil.jpg"
})
##################################### new artist
artist7 = Artist.create({
  name: "Red Hot Chili Peppers",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449886/jcpf9fitibkl2qdwjbsf.jpg"
})
##################################### new artist
artist8 = Artist.create({
  name: "Steely Dan",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461466/steely-dan_r0qwxa.jpg"
})

##################################### new artist
artist10 = Artist.create({
  name: "The Doors",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450185/qr3gloqmsuxu65xibrwb.jpg"
})
##################################### new artist
artist12 = Artist.create({
  name: "Weezer",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461639/weezer_big_o42adp.jpg"
})
##################################### new artist
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
