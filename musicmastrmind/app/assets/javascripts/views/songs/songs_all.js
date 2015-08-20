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
    songs.fetch({ reset: true, data: { all: true } });
    var songsIndex =
      new MusicMastrMind.Views.SongsIndex({
        collection: songs
      });
    this.addSubview(".songs-all", songsIndex);
  },

  render:  function () {
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
