MusicMastrMind.Collections.Songs = Backbone.Collection.extend({
  url: "/api/songs",
  model: MusicMastrMind.Models.Song,

  getAndFetch: function(id) {
    var songs = this;
    var song = this.get(id);

    if (song) {
      song.fetch();
    } else {
      song = new MusicMastrMind.Models.Song({ id: id });
      songs.add(song);
      song.fetch({
        error: function () {
          songs.remove(song);
        }
      });
    }
    return song;
  }
});
