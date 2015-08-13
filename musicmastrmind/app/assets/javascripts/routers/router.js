MusicMastrMind.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = new MusicMastrMind.Collections.Songs();
  },

  routes: {
    "": "LandingPage",
    "songs/index": "SongsIndex", // doesn't really belong. for developement
    "songs/:id": "SongShow"
  },

  LandingPage: function () {
    this.$rootEl.html("");
  },

  SongsIndex: function () {
    var songs = new MusicMastrMind.Collections.Songs();
    songs.fetch({ data: { all: true } });
    var view = new MusicMastrMind.Views.SongsIndex({ collection: songs });
    this._swapView(view);
  },

  SongShow: function (id) {
    var song = this.songs.getAndFetch(id);
    var view = new MusicMastrMind.Views.SongShow({ model: song });
    this._swapView(view);
  },



  _swapView: function (view) {
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.$el);
    view.render();
  }
});
