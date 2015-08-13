MusicMastrMind.Views.SongsIndex = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.collection, "sync add remove", this.render);
  },

  template: JST['songs/index'],

  render:  function () {
    var content = this.template({
      songs: this.collection // make this better with composite views maybe
    });
    this.$el.html(content);
    return this;
  }
});
