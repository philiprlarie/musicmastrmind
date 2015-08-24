MusicMastrMind.Views.ArtistShow = Backbone.CompositeView.extend({
  template: JST['artists/show'],

  className: 'artistShow group',

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.model.fetch({ success: this.addSubviews.bind(this) });
  },

  addSubviews: function () {
    this.addSongsIndex();
  },

  addSongsIndex: function () {
    this.removeSubviews('.artist-songs');
    var songsIndex =
      new MusicMastrMind.Views.SongsIndex({
        collection: this.model.songs(),
        suppressArtist: true
      });
    this.addSubview(".artist-songs", songsIndex);
  },

  // ////////////////////////////////
  // events: {
  //   "click button": "upload"
  // },
  //
  // upload: function(e){
  //   e.preventDefault();
  //   cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, function(error, result){
  //     var data = result[0];
  //     console.log("url: " + data.url);
  //     console.log("thumb_url: " + data.thumbnail_url);
  //   });
  // },
  // ////////////////////////////////

  render:  function () {
    var image_url = this.model.escape("image_url") || "http://res.cloudinary.com/dnbxm7cx2/image/upload/v1440450454/r8rctpkcwhzwc5swewnv.jpg";
    image_url = image_url.replace("upload/", "upload/w_900,h_290,c_fill/");
    var content = this.template({
      artist: this.model,
      image_url: image_url
    });
    this.$el.html(content);
    this.attachSubviews(); // subviews $els get put into the dom. subviews are already rendered
    return this;
  }
});
