MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  className: 'songShow',

  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
  },

  events: {
    // TODO ask this will rerender the showLine every time this is clicked, even if it is already showing. Worth worrying about?
    "click .lyric": "showLine"
  },

  showLine: function (event) {
    this.removeSubviews('.line-show');
    event.preventDefault();
    var target = $(event.currentTarget);
    var line = this.model.lines().getAndFetch(target.data('line-id'));
    var lineShow = new MusicMastrMind.Views.LineShow({ model: line });
    this.addSubview(".line-show", lineShow); // this is where subviews are rendered
  },



  render:  function () {
    var view = this;
    var content = this.template({
      song: this.model
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
