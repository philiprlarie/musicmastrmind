MusicMastrMind.Collections.Artists = Backbone.Collection.extend({
  url: "/api/artists",
  model: MusicMastrMind.Models.Artist,

  comparator: function(artist) {
    return artist.get('name');
  },

  getOrFetch: function(id) {
    var artists = this;
    var artist = this.get(id);

    if (!artist) {
      artist = new MusicMastrMind.Models.Artist({ id: id });
      artists.add(artist);
      artist.fetch({
        error: function () {
          artists.remove(artist);
        }
      });
    }
    return artist;
  }
});
