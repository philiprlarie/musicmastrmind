MusicMastrMind.Collections.Lines = Backbone.Collection.extend({
  url: "/api/lines",
  model: MusicMastrMind.Models.Line,

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
