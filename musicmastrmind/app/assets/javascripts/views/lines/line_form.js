MusicMastrMind.Views.LineForm = Backbone.View.extend({
  template: JST['lines/form'],
  tagName: 'form',
  className: 'line-form',

  initialize: function (options) {
    this.song = options.song;
  },

  events: {
    "click .line-form-submit": "submit",
  },

  render: function () {
    var content = this.template({
      line: this.model
    });
    this.$el.html(content);
    return this;
  },

  submit: function (event) {
    event.preventDefault();
    var params = this.$el.serializeJSON();
    this.model.set("body", params.line.body);
    this.song.lines().add(this.model);
  }

});


    //
    // if (this.submitDisabled) { // preventing double submit
    //   return "waiting for previous submit. hold your horses";
    // }
    // this.submitDisabled = true;
    //
    // this.$(".interpretation-form-errors").empty();
    // var spinner = new Spinner().spin();
    // this.$(".interpretation-form-submit").append(spinner.el);
    //
    // var params = this.$el.serializeJSON();
    // var view = this;
    // this.model.set("body", params.interpretation.body);
    // this.model.save({}, {
    //   success: function () {
    //     view.line.interpretations().add(view.model);
    //     view.submitDisabled = false;
    //   },
    //   error: function (model, resp, options) {
    //     view.submitDisabled = false;
    //     view.$(".interpretation-form-submit").find(".spinner").remove();
    //     var errors = jQuery.parseJSON(resp.responseText);
    //     _.each(errors, function (error) {
    //       this.$(".interpretation-form-errors").append("<li> *" + error + "</li>");
    //     });
