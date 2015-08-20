MusicMastrMind.Models.Song = Backbone.Model.extend({
  urlRoot: "/api/songs",

  parse: function (response) {
    if (response.lines) {
      this.lines().set(response.lines, { parse: true });
      delete response.lines;
    }
    if (response.creator) {
      this.creator().set(response.creator, { parse: true });
      if (window.CURRENT_USER && CURRENT_USER.id == response.creator_id) {
        this.belongsToCurrentUser = true;
      }
      delete response.creator;
    }
    if (response.artist) {
      this.artist().set(response.artist, { parse: true });
      delete response.artist;
    }

    return response;
  },

  lines: function () {
    if (!this._lines) {
      this._lines = new MusicMastrMind.Collections.Lines([], { song: this });
    }

    return this._lines;
  },

  creator: function () {
    if (!this._creator) {
      this._creator = new MusicMastrMind.Models.User();
    }

    return this._creator;
  },

  artist: function () {
    if (!this._artist) {
      this._artist = new MusicMastrMind.Models.Artist();
    }

    return this._artist;
  },
});
