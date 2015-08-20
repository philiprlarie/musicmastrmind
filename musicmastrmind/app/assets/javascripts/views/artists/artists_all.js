MusicMastrMind.Views.ArtistsAll = Backbone.CompositeView.extend({
  template: JST['artists/all'],

  className: 'artistsAll group',

  initialize: function () {
    this.listenTo(this.collection, "sync add remove", this.render);

    this.addSubviews();
  },

  addSubviews: function () {
    this.addArtistsIndex();
  },

  addArtistsIndex: function () {
    this.removeSubviews('.artists-all');
    var artistsIndex =
      new MusicMastrMind.Views.ArtistsIndex({
        collection: this.collection
      });
    this.addSubview(".artists-all", artistsIndex);
  },

  render:  function () {
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
