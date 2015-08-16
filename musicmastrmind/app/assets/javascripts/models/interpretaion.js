MusicMastrMind.Models.Interpretation = Backbone.Model.extend({
  urlRoot: "/api/interpretations",

  creator: function () {
    var creator_id = this.get("creator_id");
    if (!this._creator) {
      if (!creator_id) {
        return new MusicMastrMind.Models.User();
      }
      else {
        this._creator = new MusicMastrMind.Models.User({
          id: creator_id
        });
      }
    }

    if (!this._creator.get("id") && creator_id) {
      this._creator.set("id", creator_id);
    }

    return this._creator;
  }
});
