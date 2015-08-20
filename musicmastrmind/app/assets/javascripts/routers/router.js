MusicMastrMind.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = new MusicMastrMind.Collections.Songs();
    this.artists = new MusicMastrMind.Collections.Artists();
  },

  routes: {
    "": "LandingPage",
    "songs/index": "SongsIndex", // TODO doesn't really belong. for developement
    "songs/:id": "SongShow",
    "artists/all": "ArtistsAll",
    "artists/index/:letter": "ArtistsIndexByLetter",
    "artists/:id": "ArtistShow"
  },

  LandingPage: function () {
    this.$rootEl.html("");
  },

  SongsIndex: function () { // TODO get rid of this route.
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

  ArtistsAll: function () {
    var artists = new MusicMastrMind.Collections.Artists();
    artists.fetch({ data: { all: true } });
    var view = new MusicMastrMind.Views.ArtistsAll({ collection: artists });
    this._swapView(view);
  },

  ArtistsIndexByLetter: function (letter) {
    // usually will be search by letter, but could be more than one letter.
    // in that case it will find a match from the beginning of the name
    var artists = new MusicMastrMind.Collections.Artists();
    artists.fetch({ data: { letter: letter } });
    var view = new MusicMastrMind.Views.ArtistsIndex({ collection: artists });
    this._swapView(view);
  },

  ArtistShow: function (id) {
    var artist = this.artists.getAndFetch(id);
    var view = new MusicMastrMind.Views.ArtistShow({ model: artist });
    this._swapView(view);
  },



  _swapView: function (view) {
    this.currentView && this.currentView.remove(); // jshint ignore:line
    this.currentView = view;
    this.$rootEl.html(view.$el);
    view.render();
  }
});
