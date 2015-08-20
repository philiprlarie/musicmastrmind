MusicMastrMind.Views.Navbar = Backbone.View.extend({
  initialize: function (options) {
    this.router = options.router;
    this.listenTo(this.router, "route", this.handleRoute);
  },

  template: JST.navbar,

  handleRoute: function (route, params) {
    this.$(".active").removeClass("active");
    this.$(".navbar-" + route).addClass("active");
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }
});
