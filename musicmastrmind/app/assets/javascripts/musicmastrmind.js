window.MusicMastrMind = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {

    var router = new MusicMastrMind.Routers.Router({
      $rootEl: $('#content')
    });
    Backbone.history.start();

    var nav = new MusicMastrMind.Views.Navbar({
      router: router
    });
    $('#navbar').html(nav.$el);
    nav.render();
  }
};
