MusicMastrMind.Collections.Interpretations = Backbone.Collection.extend({
  url: function () {
    return this.line.url() + "/interpretations";
  },
  model: MusicMastrMind.Models.Interpretation,

  initialize: function (models, options) {
    this.line = options.line;
  },

  getOrFetch: function(id) {
    var interpretations = this;
    var interpretation = this.get(id);

    if (!interpretation) {
      interpretation = new MusicMastrMind.Models.Interpretation({ id: id });
      interpretations.add(interpretation);
      interpretation.fetch({
        error: function () {
          interpretations.remove(interpretation);
        }
      });
    }
    return interpretation;
  }
});
