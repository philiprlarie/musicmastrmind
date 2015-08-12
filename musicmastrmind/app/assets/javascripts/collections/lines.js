MusicMastrMind.Collections.Lines = Backbone.Collection.extend({
  url: function () {
    return this.song.url() + "/lines";
  },
  model: MusicMastrMind.Models.Line,

  initialize: function (models, options) {
    this.song = options.song;
  },

  getAndFetch: function(id) {
    var lines = this;
    var line = this.get(id);

    if (line) {
      line.fetch();
    } else {
      line = new MusicMastrMind.Models.Line({ id: id });
      lines.add(line);
      line.fetch({
        error: function () {
          lines.remove(line);
        }
      });
    }
    return line;
  }
});
