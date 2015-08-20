MusicMastrMind.Views.SongsAll = Backbone.CompositeView.extend({
  template: JST['songs/all'],

  className: 'songsAll group',

  initialize: function () {
    this.addSubviews();
  },

  addSubviews: function () {
    this.addSongsIndex();
  },

  addSongsIndex: function () {
    this.removeSubviews('.songs-all');
    var songs = new MusicMastrMind.Collections.Songs();

    var songsIndex =
      new MusicMastrMind.Views.SongsIndex({
        collection: songs,
        fetchOptions: { reset: true, data: { all: true } }
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
