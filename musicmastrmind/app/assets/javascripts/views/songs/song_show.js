MusicMastrMind.Views.SongShow = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
  },

  template: JST['songs/show'],

  render:  function () {
    var content = this.template({ song: this.model });
    this.$el.html(content);
    return this;
  }
});
