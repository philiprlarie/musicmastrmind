MusicMastrMind.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = new MusicMastrMind.Collections.Songs();
  },

  routes: {
    "songs/:id": "SongShow"
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
