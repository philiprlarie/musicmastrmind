heroku -- make sure to migrate your heroku database. do this with heroku run rake db:migrate.


something flashes with first render then goes away on second render. Put that thing in a success callback of whatever fetch you are waiting for.

doesn't seem to route when you refresh page or get here by direclty typing in the url. problem was that router wasn't listening to routes when navbar is first rendered. move Backbone.history.start() to after when navbar is rendered.

Fetch a song then fetch attributes about the song. don't do this. instead fetch them all together. have rails give you nested response

avoid N + 1 queries. instead do something like this
@interpretations =
  Interpretation.includes(:creator).where("line_id = ?", @line.id)

when fetching a whole collection, pass option { reset: true } this will prevent an add event from being fired for every model added to collection.

heroku reset your database
heroku pg:reset DATABASE
musicmastrmind
heroku run rake db:migrate
heroku run rake db:reset


var spinner = new Spinner().spin()
$('h1').append(spinner.el)

TODO users image
TODO user sign in/up styling - show errors on bad log in
TODO new song form styling
TODO new song image option
TODO guest log in
TODO reset database everyday
TODO search functionality

composite_view.js
TODO grab the documentation for this so that I have a record of my own composite view.

interpretation_form.js
TODO maybe refactor this

navbar.jst.ejs
<!-- TODO add search functionality -->
<!-- <form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form> -->

Gemfile
TODO clean up gemfile








//
