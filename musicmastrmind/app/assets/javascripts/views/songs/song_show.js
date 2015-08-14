MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(
      this.model.lines(), "add", this.addLine
    );

    this.listenTo(
      this.model.lines(), "remove", this.removeLine
    );

    this.model.lines().each(this.addLine.bind(this));
  },

  addLine: function (line) {
    var linesShow =
      new MusicMastrMind.Views.LineShow({ model: line });
    this.addSubview(".lines", linesShow); // this is where subviews are rendered
  },

  removeLine: function (line) {
    // TODO refactor this using the provided CompositeView removeModelSubview (selector, model) method
    var subview = _.find(
      this.subviews(".lines"),
      function (subview) {
        return subview.model === line;
      }
    );

    this.removeSubview(".lines", subview);
  },

  render:  function () {
    var view = this;
    var content = this.template({
      song: this.model
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews get put into the dom. They are already rendered into their respective $el's
    return this;
  }
});
