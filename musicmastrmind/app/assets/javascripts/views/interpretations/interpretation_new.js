  MusicMastrMind.Views.InterpretationNew = Backbone.View.extend({
  template: JST['interpretations/form'],
  tagName: 'form',

  initialize: function (options) {
    this.line = options.line;
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

  // TODO allow for editing of the current user's post
  // TODO compare this way to enter a form with that from TrelloClone. What is the best way to enter a form? can you do new/edit at the same time?
  submit: function (event) {
    event.preventDefault();
    var view = this;
    var params = $(event.currentTarget).serializeJSON();
    this.model.set("body", params.interpretation.body);

    var interpretation = this;
    this.model.save({}, {
      success: function () {
        view.line.interpretations().add(view.model);
        // re-render to clear form/preview
        view.render();
      }
    });
  }

});
