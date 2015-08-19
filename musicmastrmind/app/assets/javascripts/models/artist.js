MusicMastrMind.Models.Artist = Backbone.Model.extend({
  urlRoot: "/api/artists",

  parse: function (response) {
    if (response.songs) {
      this.songs().set(response.songs, { parse: true });
      delete response.songs;
    }

    return response;
  },

  songs: function () {
    if (!this._songs) {
      this._songs = new MusicMastrMind.Collections.Songs();
    }

    return this._songs;
  }
});
