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

  submit: function (event) {
    event.preventDefault();
    var params = this.$el.serializeJSON();
    this.model.set("body", params.line.body);
    this.song.lines().add(this.model);
  },



  render: function () {
    var content = this.template({
      line: this.model
    });
    this.$el.html(content);
    return this;
  },
});
