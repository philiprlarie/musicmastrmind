MusicMastrMind.Views.LineShow = Backbone.CompositeView.extend({
  template: JST['lines/show'],

  className: 'line',

  initialize: function () {
    this.listenTo(this.model, "sync add remove", this.render);

    this.listenTo(
      this.model.interpretations(), "add", this.addInterpretation
    );
    this.listenTo(
      this.model.interpretations(), "remove", this.removeInterpretation
    );

    // TODO add new interpretaion form view
    // var interpretationNewView =
    //   new App.Views.InterpretationNew({ model: this.model });
    // this.addSubview(".interpretations-new", interpretationNewView);
    //
    this.model.interpretations().each(this.addInterpretation.bind(this));
  },

  addInterpretation: function (interpretation) {
    // TODO ask about how to make split long lines. cant make a newlien after equals sign
    var interpretationsShow =
      new MusicMastrMind.Views.InterpretationShow({ model: interpretation });
    this.addSubview(".interpretations", interpretationsShow);
  },

  removeInterpretation: function (interpretation) {
    // interpretation this is the model TODO use remove by model.
    var subview = _.find(
      this.subviews(".interpretations"),
      function (subview) {
        return subview.model === interpretation;
      }
    );

    this.removeSubview(".interpretations", subview);
  },




  render: function () {
    var view = this;
    var renderedContent = this.template({
      line: this.model
    });

    this.$el.html(renderedContent);
    this.attachSubviews();

    return this;
  }
});
