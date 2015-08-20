MusicMastrMind.Views.SongsIndex = Backbone.View.extend({
  initialize: function (options) {
    this.listenTo(this.collection, "sync add remove", this.render);
    if (typeof(options.suppressArtist) === 'undefined') {
      this.suppressArtist = false;
    } else {
      this.suppressArtist = options.suppressArtist;
    }
  },

  template: JST['songs/index'],
  render: function () {
    debugger;
    var content = this.template({
      songs: this.collection,
      suppressArtist: this.suppressArtist
    });
    this.$el.html(content);
    return this;
  }
});
