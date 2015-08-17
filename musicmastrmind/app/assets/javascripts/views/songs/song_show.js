MusicMastrMind.Views.SongShow = Backbone.CompositeView.extend({
  template: JST['songs/show'],

  className: 'songShow',

  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);
    this.listenTo(this.model, "sync", this.handleSync);
    this.listenTo(this.model.creator(), "sync", this.render);
  },

  handleSync: function () {
    this.model.creator().fetch(); // TODO ask is this a good place for this fetch? you can only fetch the creator when you have already a "creator_id" attribute in the song. that will only come after it has been fetched.
  },

  events: {
    // TODO ask this will rerender the showLine every time this is clicked, even if it is already showing. Worth worrying about?
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
    var view = this;
    var content = this.template({
      song: this.model,
      creator: this.model.creator()
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
