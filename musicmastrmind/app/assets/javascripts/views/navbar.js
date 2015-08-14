MusicMastrMind.Views.Navbar = Backbone.View.extend({
  initialize: function (options) {
    this.router = options.router;
    this.listenTo(this.router, "route", this.handleRoute);
  },

  template: JST['navbar'],

  handleRoute: function (route, params) {
    // TODO bug. doesn't seem to route when you refresh page or get here by direclty typing in the url. something about only firing route event when the url has changed.
    this.$(".active").removeClass("active");
    this.$("." + route).addClass("active");
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});
