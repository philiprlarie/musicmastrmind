  MusicMastrMind.Views.InterpretationForm = Backbone.View.extend({
  template: JST['interpretations/form'],
  tagName: 'form',
  className: 'interpretation-form',

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

  // TODO watch out for double form submit. disable submit button
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

  // submit: function (event) {
  //   event.preventDefault();
  //   var view = this;
  //   var params = $(event.currentTarget).serializeJSON();
  //   this.model.set("body", params.interpretation.body);
  //
  //   var interpretation = this;
  //   this.model.save({}, {
  //     success: function () {
  //       setTimeout(function () {
  //         view.line.interpretations().add(view.model);
  //         // re-render to clear form/preview
  //         view.render();
  //       }, 1000);
  //     }
  //   });
  // }

});
