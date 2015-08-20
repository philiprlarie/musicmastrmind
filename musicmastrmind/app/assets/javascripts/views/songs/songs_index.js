MusicMastrMind.Views.SongsIndex = Backbone.View.extend({
  tagName: 'ul',
  template: JST['songs/index'],

  initialize: function (options) {
    this.listenTo(this.collection, "sync add remove", this.render);

    // show artist unless told not to
    if (typeof(options.suppressArtist) === 'undefined') {
      this.suppressArtist = false;
    } else {
      this.suppressArtist = options.suppressArtist;
    }
  },



  render: function () {
    var content = this.template({
      songs: this.collection,
      suppressArtist: this.suppressArtist
    });
    this.$el.html(content);
    return this;
  }
});
