MusicMastrMind.Models.Song = Backbone.Model.extend({
  urlRoot: "/api/songs",

  parse: function (response) {
    if (response.lines) {
      // only need to parse if we will be nesting things inside lines. we might need to parse inside. either way, doesn't hurt.
      this.lines().set(response.lines, { parse: true });
      delete response.lines;
    }
    if (response.creator) {
      // only need to parse if we will be nesting things inside lines. we might need to parse inside. either way, doesn't hurt.
      this.creator().set(response.creator, { parse: true });
      delete response.creator;
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
  }
});
