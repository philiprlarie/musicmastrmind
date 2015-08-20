MusicMastrMind.Views.ArtistsIndex = Backbone.View.extend({
  className: "artists-index",

  initialize: function () {
    this.listenTo(this.collection, "sync add remove", this.render);
  },

  template: JST['artists/index'],

  render:  function () {
    var content = this.template({
      artists: this.collection
    });
    this.$el.html(content);
    return this;
  }
});
