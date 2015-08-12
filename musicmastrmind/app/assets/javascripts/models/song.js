MusicMastrMind.Models.Song = Backbone.Model.extend({
  urlRoot: "/api/songs",

  lines: function () {
    if (!this._lines) {
      this._lines = new MusicMastrMind.Collections.Lines({ song: this });
    }

    return this._lines;
  }
});
