window.MusicMastrMind = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {

    var router = new MusicMastrMind.Routers.Router({
      $rootEl: $('#content')
    });

    var nav = new MusicMastrMind.Views.Navbar({
      router: router
    });
    nav.render();
    $('#navbar').html(nav.$el);

    Backbone.history.start();
    
  }
};
