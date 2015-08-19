heroku -- make sure to migrate your heroku database. do this with heroku run rake db:migrate.


something flashes with first render then goes away on second render. Put that thing in a success callback of whatever fetch you are waiting for.
