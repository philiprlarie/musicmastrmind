MusicMastrMind.Views.SongNew = Backbone.CompositeView.extend({
  template: JST['songs/new'],

  className: 'songNew group',

  initialize: function () {
    this.listenTo(this.model.lines(), "add remove", this.addLine);
    this.addSubviews();
  },

  addSubviews: function () {
    this.newLineForm();
  },

  events: {
    "click .song-form-submit": "submit",
    "click .song-line-delete": "deleteLine",
  },

  addLine: function () {
    this.newLineForm();
    var params = this.$(".song-new-form").serializeJSON();
    this.model.set(params.input.song);
    this.render();
    this.$('.new-line-textarea').focus();
  },

  newLineForm: function () {
    this.removeSubviews('.line-new');
    var lineNewView =
      new MusicMastrMind.Views.LineForm({
        model: new MusicMastrMind.Models.Line(),
        song: this.model
      });
    this.addSubview(".line-new", lineNewView);
  },

  deleteLine: function (event) {
    event.preventDefault();
    var lineId = $(event.currentTarget).data("line-id");
    var modelToDelete = this.model.lines().models[lineId];
    this.model.lines().remove(modelToDelete);
  },


  submit: function (event) {
    event.preventDefault();

    var params = this.$(".song-new-form").serializeJSON();
    this.model.set("form_data", params.input);

    var view = this;
    this.model.save({}, {
      success: function() {
        Backbone.history.navigate(
          "#/songs/" + view.model.id,
          { trigger: true }
        );
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
    this.$('.song-new-form-name').focus();
    return this;
  }
});
