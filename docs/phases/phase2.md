# Phase 2: Viewing Blogs and Posts

## Rails
### Models

### Controllers
Api::SongsController (create, destroy, index, show)
Api::LinesController (create, destroy, index, update)

### Views
* lines/show.json.jbuilder

## Backbone
### Models
* Song (parses nested `lines` association)
* Line

### Collections
* Songs
* Lines

### Views
* SongForm
* SongShow (composite view, contains LinesIndex subview)
* LinesIndex (composite view, contains LinesIndexItem subviews)
* LinesIndexItem
* LineInterpretationShow

## Gems/Libraries
