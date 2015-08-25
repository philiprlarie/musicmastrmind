MusicMastrMind.Views.LandingIndex = Backbone.View.extend({
  tagName: 'ul',
  template: JST['landing/index'],

  initialize: function (options) {
    this.listenTo(this.collection, "sync add remove", this.render);
  },

  render: function () {
    this.collection.models = this.collection.shuffle();
    var content = this.template({
      songs: this.collection,
    });
    this.$el.html(content);
    return this;
  }
});
