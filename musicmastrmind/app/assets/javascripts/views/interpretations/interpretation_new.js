  MusicMastrMind.Views.InterpretationForm = Backbone.View.extend({
  template: JST['interpretations/form'],
  tagName: 'form',
  className: 'interpretation-form',

  initialize: function (options) {
    this.line = options.line;
    this.submitDisabled = false;
  },

  events: {
    'submit': 'submit'
  },

  render: function () {
    var content = this.template({
      interpretation: this.model
    });
    this.$el.html(content);
    return this;
  },

  // TODO consider adding an hourglass or something while waiting for response
  // TODO when the submit button for a edit, imediattely changes view without waiting for server response
  submit: function (event) {
    event.preventDefault();
    if (this.submitDisabled) { // preventing double submit
      return "waiting for previous submit. hold your horses";
    }
    this.submitDisabled = true;

    var view = this;
    var params = $(event.currentTarget).serializeJSON();
    this.model.set("body", params.interpretation.body);

    this.model.save({}, {
      success: function () {
        view.line.interpretations().add(view.model);
        this.submitDisabled = false;
      },
      error: function () {
        this.submitDisabled = false;
      }
    });
  }

});
