MusicMastrMind.Views.SongsAll = Backbone.CompositeView.extend({
  template: JST['songs/all'],

  className: 'songsAll group',

  initialize: function () {
    this.listenTo(this.collection, "sync add remove", this.render);

    this.addSubviews();
  },

  addSubviews: function () {
    this.addSongsIndex();
  },

  addSongsIndex: function () {
    this.removeSubviews('.songs-all');
    var songsIndex =
      new MusicMastrMind.Views.SongsIndex({
        collection: this.collection
      });
    this.addSubview(".songs-all", songsIndex);
  },

  render:  function () {
    var view = this;
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
