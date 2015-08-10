# MusicMastrMind

[Heroku link][heroku]

[heroku]: https://musicmastrmind.herokuapp.com/

## Minimum Viable Product
MusicMastrMind is a clone of Rap Genius built on Rails and Backbone. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] Submit lyrics for songs
- [ ] Submit meaning for song lyrics
- [ ] View song lyrics and meanings
- [ ] Tag songs with music genre
- [ ] Search for songs by title
- [ ] Search for songs by artist

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Song Creation (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. By the end of this phase, users will be able to create songs using
a simple text form in a Rails view. Also, they will be able to add lyric
interpretations. The most important part of this phase will
be pushing the app to Heroku and ensuring that everything works before moving on
to phase 2.

[Details][phase-one]

### Phase 2: Viewing Songs and Line interpretations (~2 days)
I will add API routes to serve song and post data as JSON, then add Backbone
models and collections that fetch data from those routes. By the end of this
phase, users will be able to create blogs and view both blogs and posts, all
inside a single Backbone app.

[Details][phase-two]

### Phase 3: Search and Songs by Artist/Genre (~2 days)
In this phase, I plan on adding some more functionality to the search process. I
will create genre tags which will be related to the songs through a genre
tagging database (it is a many to many relationship). There will also be
an artists table. This will be a many to one relationship. I will look into
searching, fuzzy search by song title and maybe by artist name as well.

[Details][phase-three]

### Phase 4: Song Comments (~1-2 days)
Here I will add song comments. These will belong to both a song and to a user.
this should be a relatively straightforward addition.

[Details][phase-four]

### Phase 5: Fixing Searching, Page navigation and styling (~2 days)
This part will be deeply involved CSS work. This is when I make everything look
pretty.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] Voting for different line interpretations
- [ ] Comments on line interpretations
- [ ] Add embedded youtube videos for songs
- [ ] Activity history (e.g. contributions, points based on how people voted)
- [ ] Following other users
- [ ] Showing top users by points
- [ ] User avatars
- [ ] Typeahead search bar

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
