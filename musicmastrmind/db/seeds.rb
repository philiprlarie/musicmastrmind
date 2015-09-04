
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
user5 = User.create({
  username: "Guest",
  email: 'guest@musicmastrmind.com',
  password: 'passwordpassword'
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
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440566774/jetty_tpaza0.jpg",
  created_at: 1.days.ago
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
  creator_id: user2.id,
  created_at: 4.hours.ago
})
interpretation5 = Interpretation.create({
  body: '"who\'s sucking on my sun." WTF does that mean?',
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 2.hours.ago
})




##################################### new artist
artist4 = Artist.create({
  name: "Kings of Leon",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449685/fzef6ts9yv2gsuhmzgmb.jpg"
})
sexOnFire = Song.create({
  title: "Sex on Fire",
  creator_id: user4.id,
  artist_id: artist4.id,
  created_at: 3.days.ago
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
  creator_id: user2.id,
  created_at: 3.minutes.ago
})
interpretation5 = Interpretation.create({
  body: 'Big brother is always watching.',
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 1.minutes.ago
})




##################################### new artist
artist5 = Artist.create({
  name: "Led Zeppelin",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461370/classic-led-zeppelin-wallpaper-with-jimmy-page-in-front_fdiyzm.jpg"
})
lemonSong = Song.create({
  title: "Lemon Song",
  creator_id: user4.id,
  artist_id: artist5.id,
  created_at: 1.years.ago
})
line1 = Line.create({
  body: "I should have quit you, long time ago. (X2)
I wouldn't be here, my children, down on this killin' floor.",
  order: 1,
  song_id: lemonSong.id
})
line2 = Line.create({
  body: "I should have listened, baby, to my second mind (X2)
Everytime I go away and leave you, darling, you send me the blues way down the line.",
  order: 2,
  song_id: lemonSong.id
})
line3 = Line.create({
  body: "Said, people worry I can't keep you satisfied.
Let me tell you baby, you ain't nothin but a two-bit, no-good jive.",
  order: 3,
  song_id: lemonSong.id
})
line4 = Line.create({
  body: "Went to sleep last night, worked as hard as I can,
Bring home my money, you take my money, give it to another man.",
  order: 4,
  song_id: lemonSong.id
})
line5 = Line.create({
  body: "I should have quit you, baby, such a long time ago.
I wouldn't be here with all my troubles, down on this killing floor.",
  order: 5,
  song_id: lemonSong.id
})
line6 = Line.create({
  body: "Squeeze me baby, till the juice runs down my leg. [X2]
The way you squeeze my lemon, I'm gonna fall right out of bed.",
  order: 6,
  song_id: lemonSong.id
})
line7 = Line.create({
  body: "I'm gonna leave my children down on this killing floor.",
  order: 7,
  song_id: lemonSong.id
})

interpretation4 = Interpretation.create({
  body: "Can't make lemondaid without squeezing a couple lemons if you know what I mean ;)",
  line_id: line6.id,
  creator_id: user4.id,
  created_at: 355.days.ago
})
interpretation5 = Interpretation.create({
  body: 'What do you mean?',
  line_id: line6.id,
  creator_id: user1.id,
  created_at: 354.days.ago
})




##################################### new artist
artist6 = Artist.create({
  name: "Pink Floyd",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449848/muaifvmznof1ysmrxeil.jpg"
})
pigs = Song.create({
  title: "Pigs on the Wing, Pt. 1",
  creator_id: user1.id,
  artist_id: artist6.id,
  created_at: 1.years.ago,
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440628817/373550006_84d331fda4_b_ku77un.jpg"
})
line1 = Line.create({
  body: "If you didn't care
What happened to me",
  order: 1,
  song_id: pigs.id
})
line2 = Line.create({
  body: "And I didn't care
  For you",
  order: 2,
  song_id: pigs.id
})
line3 = Line.create({
  body: "We would zig-zag our way
Through the boredom and pain",
  order: 3,
  song_id: pigs.id
})
line4 = Line.create({
  body: "Occasionally, glancing up through the rain",
  order: 4,
  song_id: pigs.id
})
line5 = Line.create({
  body: "Wondering which of the buggers to blame",
  order: 5,
  song_id: pigs.id
})
line6 = Line.create({
  body: "And watching for pigs on the wing",
  order: 6,
  song_id: pigs.id
})
interpretation4 = Interpretation.create({
  body: "I'll like this song when pigs can fly. Bieber 4 lyfe",
  line_id: line6.id,
  creator_id: user1.id,
  created_at: 55.days.ago
})
interpretation5 = Interpretation.create({
  body: '٩(͡๏̯͡๏)۶',
  line_id: line6.id,
  creator_id: user4.id,
  created_at: 30.days.ago
})

breathe = Song.create({
  title: "Breathe",
  creator_id: user1.id,
  artist_id: artist6.id,
  created_at: Date.new(2015, 2, 14)
})
line1 = Line.create({
  body: "Breathe, breathe in the air.
Don't be afraid to care.
Leave but don't leave me.
Look around and choose your own ground.",
  order: 1,
  song_id: breathe.id
})
line2 = Line.create({
  body: "Long you live and high you fly
And smiles you'll give and tears you'll cry
And all you touch and all you see
Is all your life will ever be.",
  order: 2,
  song_id: breathe.id
})
line3 = Line.create({
  body: "Run, rabbit run.
Dig that hole, forget the sun,
And when at last the work is done
Don't sit down it's time to dig another one.",
  order: 3,
  song_id: breathe.id
})
line4 = Line.create({
  body: "For long you live and high you fly
But only if you ride the tide
And balanced on the biggest wave
You race towards an early grave.",
  order: 4,
  song_id: breathe.id
})
interpretation4 = Interpretation.create({
  body: "Don't forget to breathe. That is so important. Whenever I forget, to breathe, I just start singing this song and then I remeber. I love Pink Floyd, I couldn't live without them.",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: Date.new(2015, 5, 14)
})
interpretation5 = Interpretation.create({
  body: 'RIP Pink Floyd. You will be missed.',
  line_id: line1.id,
  creator_id: user4.id,
  created_at: DateTime.new(2015, 8, 14, 4, 7, 5)
})
interpretation5 = Interpretation.create({
  body: 'RIP EvilGenius.',
  line_id: line1.id,
  creator_id: user2.id,
  created_at: DateTime.new(2015, 8, 15, 4, 8, 6)
})




##################################### new artist
artist7 = Artist.create({
  name: "Red Hot Chili Peppers",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440449886/jcpf9fitibkl2qdwjbsf.jpg"
})
breakthegirl = Song.create({
  title: "Breaking the Girl",
  creator_id: user3.id,
  artist_id: artist7.id,
  created_at: 5.days.ago
})
line1 = Line.create({
  body: "I am a man
Cut from the know
Rarely do friends
Come and then go",
  order: 1,
  song_id: breakthegirl.id
})
line2 = Line.create({
  body: "She was a girl
Soft but estranged
We were the two
Our lives rearranged",
  order: 2,
  song_id: breakthegirl.id
})
line3 = Line.create({
  body: "Feeling so good that day
A feeling of love that day",
  order: 3,
  song_id: breakthegirl.id
})
line4 = Line.create({
  body: "Twisting and turning
Your feelings are burning
You're breaking the girl
She meant you no harm",
  order: 4,
  song_id: breakthegirl.id
})
line5 = Line.create({
  body: "Think you're so clever
But now you must sever
You're breaking the girl
He loves no one else",
  order: 5,
  song_id: breakthegirl.id
})
line6 = Line.create({
  body: "Raised by my dad
Girl of the day
He was my man
That was the way",
  order: 6,
  song_id: breakthegirl.id
})
line7 = Line.create({
  body: "She was the girl
Left alone
Feeling the need
To make me her home",
  order: 7,
  song_id: breakthegirl.id
})
line8 = Line.create({
  body: "I don't know what when or why
The twilight of love had arrived",
  order: 8,
  song_id: breakthegirl.id
})
interpretation4 = Interpretation.create({
  body: "These lyrics make no sense. I think they are the result of heavy drug use.",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 3.days.ago
})




##################################### new artist
artist8 = Artist.create({
  name: "Steely Dan",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461466/steely-dan_r0qwxa.jpg"
})
aja = Song.create({
  title: "Aja",
  creator_id: user3.id,
  artist_id: artist8.id,
  created_at: 5.days.ago
})
line1 = Line.create({
  body: "Up on the hill
  People never stare
  They just don't care ",
  order: 1,
  song_id: aja.id
})
line2 = Line.create({
  body: "Chinese music under banyan trees
  Here at the dude ranch above the sea
  Aja",
  order: 2,
  song_id: aja.id
})
line3 = Line.create({
  body: "When all my dime dancin' is through
I run to you",
  order: 3,
  song_id: aja.id
})
line4 = Line.create({
  body: "Up on the hill
They've got time to burn
There's no return ",
  order: 4,
  song_id: aja.id
})
line5 = Line.create({
  body: "Double helix in the sky tonight
Throw out the hardware
Let's do it right",
  order: 5,
  song_id: aja.id
})
line6 = Line.create({
  body: "Up on the hill
They think I'm okay
Or so they say
Chinese music always sets me free
Angular banjoes
Sound good to me",
  order: 6,
  song_id: aja.id
})
line7 = Line.create({
  body: "Aja
When all my dime dancin' is through
I run to you",
  order: 7,
  song_id: aja.id
})
interpretation4 = Interpretation.create({
  body: "These lyrics make no sense. I think they are the result of heavy drug use.",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 3.days.ago
})



##################################### new artist
artist9 = Artist.create({
  name: "The Beatles",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450083/c7oc3xeboknfkyziasnd.jpg"
})

because = Song.create({
  title: "Because",
  writer: 'Lennon–McCartney',
  creator_id: user1.id,
  artist_id: artist9.id,
  created_at: 5.days.ago
})
line1 = Line.create({
  body: "Because the world is round it turns me on
Because the world is round",
  order: 1,
  song_id: because.id
})
line2 = Line.create({
  body: "Because the wind is high it blows my mind
Because the wind is high",
  order: 2,
  song_id: because.id
})
line3 = Line.create({
  body: "Love is old, love is new
Love is all, love is you",
  order: 3,
  song_id: because.id
})
line4 = Line.create({
  body: "Because the sky is blue, it makes me cry
Because the sky is blue",
  order: 4,
  song_id: because.id
})
interpretation1 = Interpretation.create({
  body: "The world is round. Discovered by Columbus 1492",
  line_id: line1.id,
  creator_id: user2.id,
  created_at: 4.days.ago
})
interpretation2 = Interpretation.create({
  body: "McCartney is one frisky fellow",
  line_id: line1.id,
  creator_id: user3.id,
  created_at: 3.days.ago
})
interpretation3 = Interpretation.create({
  body: "Great line!",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 2.days.ago
})
interpretation4 = Interpretation.create({
  body: "Very great line!!",
  line_id: line1.id,
  creator_id: user4.id,
  created_at: 1.days.ago
})
interpretation5 = Interpretation.create({
  body: "The wind is the high one now?",
  line_id: line2.id,
  creator_id: user3.id,
  created_at: 3.days.ago
})

something = Song.create({
  title: "Something",
  writer: 'George Harrison',
  creator_id: user1.id,
  artist_id: artist9.id,
  created_at: 15.days.ago
})
line1 = Line.create({
  body: "Something in the way she moves
Attracts me like no other lover
Something in the way she woos me
I don't want to leave her now
You know I believe and how",
  order: 1,
  song_id: something.id
})
line2 = Line.create({
  body: "Somewhere in her smile she knows
That I don't need no other lover
Something in her style that shows me
I don't want to leave her now
You know I believe and how",
  order: 2,
  song_id: something.id
})
line3 = Line.create({
  body: "You're asking me will my love grow
I don't know, I don't know
You stick around and it may show
I don't know, I don't know",
  order: 3,
  song_id: something.id
})
line4 = Line.create({
  body: "Something in the way she knows
And all I have to do is think of her
Something in the things she shows me
I don't want to leave her now
You know I believe and how",
  order: 4,
  song_id: something.id
})
interpretation1 = Interpretation.create({
  body: "George was definitely the best",
  line_id: line1.id,
  creator_id: user2.id,
  created_at: 5.days.ago
})
interpretation2 = Interpretation.create({
  body: "Ringo FTW",
  line_id: line1.id,
  creator_id: user3.id,
  created_at: 3.days.ago

})

maxwell = Song.create({
  title: "Maxwell's Silver Hammer",
  writer: "Lennon–McCartney",
  creator_id: user2.id,
  artist_id: artist9.id,
  created_at: 3.years.ago
})
line1 = Line.create({
  body: "Joan was quizzical, studied pataphysical
Science in the home
Late nights all alone with a test-tube ohh oh oh oh
Maxwell Edison majoring in medicine
Calls her on the phone
Can I take you out to the pictures, Joan?
But as she's getting ready to go
A knock comes on the door",
  order: 1,
  song_id: maxwell.id
})
line2 = Line.create({
  body: "Bang, bang, Maxwell's silver hammer
Came down upon her head
Bang, bang, Maxwell's silver hammer
Made sure that she was dead",
  order: 2,
  song_id: maxwell.id
})
line3 = Line.create({
  body: "Back in school again Maxwell plays the fool again
Teacher gets annoyed
Wishing to avoid an unpleasant scene
She tells Max to stay when the class has gone away
So he waits behind
Writing 50 times \"I must not be so\" oh oh oh
But when she turns her back on the boy
He creeps up from behind",
  order: 3,
  song_id: maxwell.id
})
line4 = Line.create({
  body: "Bang, bang, Maxwell's silver hammer
Came down upon her head
Do do do do do
Bang, bang, Maxwell's silver hammer
Made sure that she was dead",
  order: 4,
  song_id: maxwell.id
})
line5 = Line.create({
  body: "P.C. Thirty-One said \"We caught a dirty one\"
Maxwell stands alone
Painting testimonial pictures ohh oh oh oh
Rose and Valerie screaming from the gallery
Say he must go free (Maxwell must go free)
The judge does not agree and he tells them so oh oh oh
But as the words are leaving his lips
A noise comes from behind",
  order: 5,
  song_id: maxwell.id
})
line6 = Line.create({
  body: "Bang, bang, Maxwell's silver hammer
Came down upon his head
Do do do do do
Bang, Bang, Maxwell's silver hammer
Made sure that he was dead
Wow wow wow oh!
Do do do do do",
  order: 6,
  song_id: maxwell.id
})
line7 = Line.create({
  body: "Silver hammer Max",
  order: 7,
  song_id: maxwell.id
})




##################################### new artist
artist10 = Artist.create({
  name: "The Doors",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450185/qr3gloqmsuxu65xibrwb.jpg"
})
fox = Song.create({
  title: "Twentieth Century Fox",
  creator_id: user3.id,
  artist_id: artist10.id,
  created_at: 5.days.ago
})
line1 = Line.create({
  body: "Well, she's fashionably lean
And she's fashionably late
She'll never rank a scene
She'll never break a date
But she's no drag
Just watch the way she walks",
  order: 1,
  song_id: fox.id
})
line2 = Line.create({
  body: "She's a twentieth century fox
She's a twentieth century fox
No tears, no fears
No ruined years, no clocks
She's a twentieth century fox, oh yeah",
  order: 2,
  song_id: fox.id
})
line3 = Line.create({
  body: "She's the queen of cool
And she's the lady who waits
Since her mind left school
It never hesitates
She won't waste time
On elementary talk",
  order: 3,
  song_id: fox.id
})
line4 = Line.create({
  body: "'Cause she's a twentieth century fox
She's a twentieth century fox
Got the world locked up
Inside a plastic box
She's a twentieth century fox, oh yeah
Twentieth century fox, oh yeah
Twentieth century fox
She's a twentieth century fox",
  order: 4,
  song_id: fox.id
})
interpretation4 = Interpretation.create({
  body: "I like a girl who isn't too lean, just fashionably lean.",
  line_id: line1.id,
  creator_id: user1.id,
  created_at: 3.days.ago
})




##################################### new artist
artist11 = Artist.create({
  name: "Yes",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450414/kscjitwpfdrte92v7dl9.jpg"
})
iveseen = Song.create({
  title: "I've Seen All Good People",
  creator_id: user3.id,
  artist_id: artist11.id,
  created_at: 50.days.ago
})
line1 = Line.create({
  body: "I've seen all good people turn their heads each day
So satisfied I'm on my way
I've seen all good people turn their heads each day
So satisfied I'm on my way",
  order: 1,
  song_id: iveseen.id
})
line2 = Line.create({
  body: "Take a straight and stronger course
to the corner of your life
Make the white queen run so fast
she hasn't got time to make you a wife",
  order: 2,
  song_id: iveseen.id
})
line3 = Line.create({
  body: "'Cause it's time, it's time in time with your time
and its news is captured
for the queen to use!
Move me on to any black square
Use me anytime you want
Just remember that the goal
Is for us all to capture all we want
(Move me on to any black square)",
  order: 3,
  song_id: iveseen.id
})
line4 = Line.create({
  body: "Don't surround yourself with yourself
Move on back two squares
Send an instant karma to me
Initial it with loving care
(Don't surround yourself)",
  order: 4,
  song_id: iveseen.id
})
line5 = Line.create({
  body: "'Cause it's time, it's time in time with your time
and its news is captured
for the queen to use!",
  order: 5,
  song_id: iveseen.id
})
line6 = Line.create({
  body: "Diddit diddit diddit diddit diddit diddit diddit didda
Diddit diddit diddit diddit diddit diddit diddit didda
(Don't surround yourself with yourself)",
  order: 6,
  song_id: iveseen.id
})
line7 = Line.create({
  body: "Don't surround yourself with yourself
(Don't surround yourself)
Move on back two squares
Send an instant karma to me
(Send an instant karma to me)
Initial it with loving care
(Don't surround yourself)",
  order: 7,
  song_id: iveseen.id
})
line8 = Line.create({
  body: "'Cause it's time, it's time in time with your time
and its news is captured
for the queen to use!",
  order: 8,
  song_id: iveseen.id
})
line9 = Line.create({
  body: "Diddit diddit diddit diddit diddit diddit diddit didda (All we are saying)
Diddit diddit diddit diddit diddit diddit diddit didda (Is give peace a chance)
Diddit diddit diddit diddit diddit diddit diddit didda (All we are saying)
Diddit diddit diddit diddit diddit diddit diddit didda (Is give peace a chance",
  order: 9,
  song_id: iveseen.id
})
line10 = Line.create({
  body: "'Cause it's time, it's time in time with your time
and it's news is captured...",
  order: 10,
  song_id: iveseen.id
})
line11 = Line.create({
  body: "I've seen all good people turn their heads each day
So satisfied I'm on my way",
  order: 11,
  song_id: iveseen.id
})
line12 = Line.create({
  body: "I've seen all good people turn their heads each day
So satisfied I'm on my way...",
  order: 12,
  song_id: iveseen.id
})




##################################### new artist
artist12 = Artist.create({
  name: "Weezer",
  image_url: "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440461639/weezer_big_o42adp.jpg"
})
sayit = Song.create({
  title: "Say It Ain't So",
  creator_id: user3.id,
  artist_id: artist12.id,
  created_at: 50.days.ago
})
line1 = Line.create({
  body: "Somebody's Heine'
Is crowdin' my icebox
Somebody's cold one
Is givin' me chills
Guess I'll just close my eyes ",
  order: 1,
  song_id: sayit.id
})
line2 = Line.create({
  body: "Oh yeah
Alright
Feels good
Inside",
  order: 2,
  song_id: sayit.id
})
line3 = Line.create({
  body: "Flip on the tele
Wrestle with Jimmy
Something is bubbling
Behind my back
The bottle is ready to blow",
  order: 3,
  song_id: sayit.id
})
line4 = Line.create({
  body: "Say it ain't so
Your drug is a heartbreaker
Say it ain't so
My love is a life taker",
  order: 4,
  song_id: sayit.id
})
line5 = Line.create({
  body: "I can't confront you
I never could do
That which might hurt you
So try and be cool
When I say
This way is a waterslide away from me
That takes you further every day
So be cool",
  order: 5,
  song_id: sayit.id
})
line6 = Line.create({
  body: "Say it ain't so
Your drug is a heartbreaker
Say it ain't so
My love is a life taker",
  order: 6,
  song_id: sayit.id
})
line7 = Line.create({
  body: "Dear Daddy
I write you in spite of years of silence
You've cleaned up, found Jesus, things are good or so I hear
This bottle of Steven's awakens ancient feelings
Like father, stepfather, the son is drowning in the flood
Yeah, yeah, yeah, yeah",
  order: 7,
  song_id: sayit.id
})
line8 = Line.create({
  body: "Say it ain't so
Your drug is a heartbreaker
Say it ain't so
My love is a life taker",
  order: 8,
  song_id: sayit.id
})
