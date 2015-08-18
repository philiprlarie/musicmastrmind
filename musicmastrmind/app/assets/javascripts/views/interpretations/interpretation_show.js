MusicMastrMind.Views.InterpretationShow = Backbone.View.extend({
  initialize: function (options) {
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model.creator(), "sync", this.render);
    // TODO refactor this. This should probably be a property of the interpretation model
    this.belongsToCurrentUser = options.belongsToCurrentUser;
  },

  template: JST['interpretations/show'],

  tagName: 'li',

  className: 'interpretation',

  render:  function () {
    var content = this.template({
      interpretation: this.model,
      belongsToCurrentUser: this.belongsToCurrentUser
    });
    this.$el.html(content);
    return this;
  }
});
