MusicMastrMind.Views.InterpretationShow = Backbone.CompositeView.extend({
  initialize: function (options) {
    this.line = options.line;
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model.creator(), "sync", this.render);
    // TODO refactor this. This should probably be a property of the interpretation model
    this.belongsToCurrentUser = options.belongsToCurrentUser;
    this.turnOffButtons = false;
  },

  template: JST['interpretations/show'],

  tagName: 'li',

  className: 'interpretation',

  events: {
    "click .interpretation-delete-btn": "delete",
    "click .interpretation-edit-btn": "edit",
    "submit .interpretation-form": "submit"
  },

  delete: function (event) {
    event.preventDefault();
    this.model.destroy();
  },

  edit: function () {
    event.preventDefault();
    var interpretationEditView = new MusicMastrMind.Views.InterpretationNew({
      model: this.model,
      line: this.line
    });
    this.addSubview(".interpretation-edit", interpretationEditView);
    this.turnOffButtons = true;
    this.render();
  },

  submit: function () {
    this.removeSubviews('.interpretation-edit');
    this.turnOffButtons = false;
    this.render();
  },

  render:  function () {
    var content = this.template({
      interpretation: this.model,
      belongsToCurrentUser: this.belongsToCurrentUser,
      turnOffButtons: this.turnOffButtons
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
