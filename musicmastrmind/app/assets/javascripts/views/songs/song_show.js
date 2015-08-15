MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  className: 'songShow',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
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
