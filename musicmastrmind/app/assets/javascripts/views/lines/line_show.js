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
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(
      this.model.interpretations(), "add", this.addInterpretation
    );
    this.listenTo(
      this.model.interpretations(), "remove", this.removeInterpretation
    );

    this.addSubviews();
  },

  addSubviews: function () {
    this.model.interpretations().each(this.addInterpretation.bind(this));

    this.addNewForm(); // only adds from for new interpretation if signed in and user doesn't already have interpretation. else does nothing
  },

  addInterpretation: function (interpretation) {
    var interpretationsShow =
      new MusicMastrMind.Views.InterpretationShow({
        model: interpretation,
        line: this.model
      });
    this.addSubview(".line-interpretations", interpretationsShow);

    this.removeSubviews('.line-interpretations-new'); // remove form when user adds his onw interpretation
  },

  removeInterpretation: function (interpretation) {
    this.removeModelSubview(".line-interpretations", interpretation);
    this.addNewForm();
  },

  addNewForm: function () {
    this.removeSubviews('.line-interpretations-new');
    if (window.CURRENT_USER && !this._currentUserHasInterpretation()) {
      var interpretationNewView =
        new MusicMastrMind.Views.InterpretationForm({
          model: new MusicMastrMind.Models.Interpretation({
            line_id: this.model.id
          }),
          line: this.model
        });
      this.addSubview(".line-interpretations-new", interpretationNewView);
    }
  },

  _currentUserHasInterpretation: function () {
    if (this.model.interpretations().any(function(interpretation) {
      return interpretation.belongsToCurrentUser;
    })) {
      return true;
    } else {
      return false;
    }
  },


  render: function () {
    var renderedContent = this.template({
      line: this.model
    });

    this.$el.html(renderedContent);
    this.attachSubviews();

    return this;
  }
});
