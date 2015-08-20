MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  className: 'songShow group',

  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model.creator(), "sync", this.render);
  },

  events: {
    "click .song-lyric": "showLine"
  },

  showLine: function (event) {
    event.preventDefault();
    this.removeSubviews('.line-show');
    var target = $(event.currentTarget);
    var line = this.model.lines().getAndFetch(target.data('line-id'));
    var lineShow = new MusicMastrMind.Views.LineShow({ model: line });
    this.addSubview(".line-show", lineShow); // this is where subviews are rendered
  },



  render:  function () {
    var content = this.template({
      song: this.model,
      creator: this.model.creator()
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
