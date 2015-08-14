MusicMastrMind.Views.LineShow = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
  },

  template: JST['lines/show'],

  render:  function () {
    var content = this.template({
      line: this.model,
      // interpretations: this.model.interpretations() // TODO make this better with composite views
    });
    this.$el.html(content);
    return this;
  }
});
