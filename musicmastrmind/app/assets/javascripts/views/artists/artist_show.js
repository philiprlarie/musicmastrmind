MusicMastrMind.Views.ArtistShow = Backbone.CompositeView.extend({
  template: JST['artists/show'],

  className: 'artistShow group',

  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model.songs(), "sync", this.addSongsIndex);

    this.addSubviews();
  },

  addSubviews: function () {
    this.addSongsIndex();
  },

  addSongsIndex: function () {
    this.removeSubviews('.artist-songs');
    var songsIndex =
      new MusicMastrMind.Views.SongsIndex({
        collection: this.model.songs()
      });
    this.addSubview(".artist-songs", songsIndex);
  },

  render:  function () {
    var view = this;
    var content = this.template({
      artist: this.model,
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
