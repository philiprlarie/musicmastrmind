MusicMastrMind.Views.LineShow = Backbone.CompositeView.extend({
  template: JST['lines/show'],

  className: 'line',

  initialize: function () {
    // don't render anything until line is fetched
    this.model.fetch({
      success: this.handleFetchedLine.bind(this)
    });
  },

  handleFetchedLine: function () {
    this.listenTo(this.model, "sync add remove", this.render);

    this.listenTo(
      this.model.interpretations(), "add", this.addInterpretation
    );
    this.listenTo(
      this.model.interpretations(), "remove", this.removeInterpretation
    );

    this.addInterpretations();
  },

  addInterpretations: function () {
    this.model.interpretations().each(this.addInterpretation.bind(this));

    this.addNewForm(); // only adds from for new interpretation if signed in and user doesn't already have interpretation. else does nothing
  },

  addInterpretation: function (interpretation) {
    var belongsToCurrentUser =
      interpretation.creator().id == window.CURRENT_USER.id;
    var interpretationsShow =
      new MusicMastrMind.Views.InterpretationShow({
        model: interpretation,
        belongsToCurrentUser: belongsToCurrentUser
      });
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

  // TODO make sure this only pops up when it should. Right now it shows up for the first render before the interpretations have been fetched. It flashes there then goes away.
  addNewForm: function () {
    this.removeSubviews('.interpretations-new');
    if (window.CURRENT_USER && !this._currentUserHasInterpretation()) {
      var interpretationNewView =
        new MusicMastrMind.Views.InterpretationNew({ model: this.model });
      this.addSubview(".interpretations-new", interpretationNewView);
    }
  },

  _currentUserHasInterpretation: function () {
    var id = window.CURRENT_USER.id;
    var returnVal = false;
    this.model.interpretations().each(function(interpretation) {
      if (id == interpretation.creator().id) {
        returnVal = true;
      }
    });
    return returnVal;
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
