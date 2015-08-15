MusicMastrMind.Views.LineShow = Backbone.View.extend({
  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
  },

  template: JST['lines/show'],

  className: 'line',

  events: {
    "click": "showLineInterpretations"
  },

  showLineInterpretations: function (event) {
    var line = this.model;
    var lineShowView = new MusicMastrMind.Views.LineShow({ model: line });
    debugger;
    // remove the current view in the div "line-show"
    // put new line view in the line show div. user current target to get which line we hsould show. store the line id as data in the div?
    // be careful about removing views correctly, no zombie views.
  },





  render:  function () {
    var content = this.template({
      line: this.model,
      // interpretations: this.model.interpretations() // TODO make this better with composite views
    });
    this.$el.html(content);
    return this;
  }
});
