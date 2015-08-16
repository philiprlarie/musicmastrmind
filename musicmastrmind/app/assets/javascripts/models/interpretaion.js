MusicMastrMind.Models.Interpretation = Backbone.Model.extend({
  urlRoot: "/api/interpretations",

  parse: function (response) {
    if (response.creator) {
      this.creator().set(response.creator, { parse: true });
      delete response.creator;
    }

    return response;
  },

  creator: function () {
    if (!this._creator) {
      this._creator = new MusicMastrMind.Models.User();
    }

    return this._creator;
  }
});
