MusicMastrMind.Views.InterpretationShow = Backbone.CompositeView.extend({
  initialize: function (options) {
    this.line = options.line;
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model.creator(), "sync", this.render);
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
    var interpretationEditView = new MusicMastrMind.Views.InterpretationForm({
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
      turnOffButtons: this.turnOffButtons
    });
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }
});
