MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  className: 'songShow group',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.creator(), "sync", this.render);
    this.model.fetch();
  },

  events: {
    "click .song-lyric": "showLine"
  },

  showLine: function (event) {
    event.preventDefault();
    this.removeSubviews('.line-show');
    var target = $(event.currentTarget);
    var line = this.model.lines().getOrFetch(target.data('line-id'));
    var lineShow = new MusicMastrMind.Views.LineShow({ model: line });
    this.addSubview(".line-show", lineShow); // this is where subviews are rendered
  },



  render:  function () {
    debugger
    var content = this.template({
      song: this.model,
      creator: this.model.creator()
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
