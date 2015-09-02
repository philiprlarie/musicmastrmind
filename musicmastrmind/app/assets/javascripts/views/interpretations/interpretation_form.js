MusicMastrMind.Views.InterpretationForm = Backbone.View.extend({
  template: JST['interpretations/form'],
  tagName: 'form',
  className: 'interpretation-form',

  initialize: function (options) {
    this.line = options.line;
    this.submitDisabled = false;
  },

  events: {
    "click .interpretation-form-submit": "submit",
  },

  render: function () {
    var content = this.template({
      interpretation: this.model
    });
    this.$el.html(content);
    this.$('.new-interpretation-textarea').focus();
    return this;
  },

  submit: function (event) {
    event.preventDefault();

    if (this.submitDisabled) { // preventing double submit
      return "waiting for previous submit. hold your horses";
    }
    this.submitDisabled = true;
    this.$(".interpretation-form-submit").attr("disabled", "disabled");

    var spinner = new Spinner().spin();
    this.$(".interpretation-form-submit").append(spinner.el);

    var params = this.$el.serializeJSON();
    var view = this;
    this.model.set("body", params.interpretation.body);
    this.model.save({}, {
      success: function () {
        view.line.interpretations().add(view.model);
        view.submitDisabled = false;
        this.$(".interpretation-form-submit").removeAttr("disabled");
      },
      error: function (model, resp, options) {
        this.$(".interpretation-form-errors").empty();
        view.submitDisabled = false;
        this.$(".interpretation-form-submit").removeAttr("disabled");
        view.$(".interpretation-form-submit").find(".spinner").remove();
        var errors = jQuery.parseJSON(resp.responseText);
        _.each(errors, function (error) {
          this.$(".interpretation-form-errors").append("<li> *" + error + "</li>");
        });
        this.$('.new-interpretation-textarea').focus();
      }
    });
  }

});
