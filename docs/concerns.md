heroku -- make sure to migrate your heroku database. do this with heroku run rake db:migrate.


something flashes with first render then goes away on second render. Put that thing in a success callback of whatever fetch you are waiting for.

doesn't seem to route when you refresh page or get here by direclty typing in the url. problem was that router wasn't listening to routes when navbar is first rendered. move Backbone.history.start() to after when navbar is rendered.

Fetch a song then fetch attributes about the song. don't do this. instead fetch them all together. have rails give you nested response
