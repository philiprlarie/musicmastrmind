window.MusicMastrMind = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new MusicMastrMind.Routers.Router({
      $rootEl: $('#content')
    });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  MusicMastrMind.initialize();
});
