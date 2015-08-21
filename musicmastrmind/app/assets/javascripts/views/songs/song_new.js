MusicMastrMind.Views.SongNew = Backbone.CompositeView.extend({
  template: JST['songs/new'],

  className: 'songNew group',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render); // ?
    this.listenTo(this.model.creator(), "sync", this.render);
    this.model.input_data = {};
  },

  events: {
    "submit .song-new-form": "submit"
  },

  submit: function (event) {
    event.preventDefault();

    var params = $(event.currentTarget).serializeJSON();
    this.model.set("form_data", params.song);

    this.model.save({}, {
      success: function() {
        debugger;
      },
      error: function () {
        debugger;
      }
    });
  },



  render:  function () {
    var content = this.template({
      song: this.model,
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
