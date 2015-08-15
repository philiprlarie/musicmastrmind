MusicMastrMind.Models.Line = Backbone.Model.extend({
  urlRoot: "/api/lines",

  parse: function (response) {
    if (response.interpretations) {
      // only need to parse if we will be nesting things inside interpretations. we might need to parse inside. either way, doesn't hurt.
      this.interpretations().set(response.interpretations, { parse: true });
      delete response.interpretations;
    }

    return response;
  },

  interpretations: function () {
    if (!this._interpretations) {
      this._interpretations = new MusicMastrMind.Collections.Interpretations([], { line: this });
    }

    return this._interpretations;
  }
});
