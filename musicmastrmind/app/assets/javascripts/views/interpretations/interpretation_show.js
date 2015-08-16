MusicMastrMind.Views.InterpretationShow = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
  },

  template: JST['interpretations/show'],

  tagName: 'li',

  className: 'interpretation',

  render:  function () {
    var content = this.template({
      interpretation: this.model,
    });
    this.$el.html(content);
    return this;
  }
});
