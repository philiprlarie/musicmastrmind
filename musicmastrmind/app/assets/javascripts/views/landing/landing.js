MusicMastrMind.Views.LandingPage = Backbone.CompositeView.extend({
  template: JST['landing/all'],

  className: 'landingAll group',

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
    var landingIndex =
      new MusicMastrMind.Views.LandingIndex({
        collection: songs
      });
    this.addSubview(".songs-all", landingIndex);
  },

  render:  function () {
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews(); 
    return this;
  }
});
