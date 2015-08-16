MusicMastrMind.Models.Line = Backbone.Model.extend({
  urlRoot: "/api/lines",

  parse: function (response) {
    if (response.interpretations) {
      // need to parse because user data is nested in interepretaions
      this.interpretations().set(
        response.interpretations,
        { parse: true }
      );
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
