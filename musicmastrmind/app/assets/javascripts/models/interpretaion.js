MusicMastrMind.Models.Interpretation = Backbone.Model.extend({
  urlRoot: "/api/interpretations",

  creator: function () {
    if (!this._creator) {
      if (!this.get("creator_id")) { return undefined; }
      else {
        this._creator = new MusicMastrMind.Models.User({
          id: this.get("creator_id")
        });
      }
    }

    return this._creator;
  }
});
