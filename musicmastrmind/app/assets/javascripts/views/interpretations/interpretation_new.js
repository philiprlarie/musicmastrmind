  MusicMastrMind.Views.InterpretationNew = Backbone.View.extend({
  template: JST['interpretations/form'],
  tagName: 'form',

  events: {
    'submit': 'submit'
  },

  render: function () {
    var content = this.template({ line: this.model });
    this.$el.html(content);
    return this;
  },

  submit: function (event) {
    event.preventDefault();
    var view = this;
    var params = $(event.currentTarget).serializeJSON();
    var interpretation =
      new MusicMastrMind.Models.Interpretation(params["interpretation"]);

    interpretation.save({}, {
      success: function () {
        view.model.comments().add(comment);
        // re-render to clear form/preview
        view.render();
      }
    });
  }

});
//
//   submit: function (event) {
//
//   }
// });
