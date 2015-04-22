disneyBnB.Views.ListingNew = Backbone.View.extend({
  tagName: 'div class=form-container',
  template: JST['listing/listingForm'],

  initialize: function(options){
    this.listings = options.collection;
    this.listing = options.model;
    this.listenTo(this.model, 'sync', this.render);
    // this.initCloudinary().bind(this);
  },

  events: {
    'submit': 'createListing',
    // 'click #upload_widget_opener': 'initCloudinary'
  },

  render: function() {
    var content = this.template({
      listing: this.model
    });
    this.$el.html(content);
    var input = this.$el.find('.address-input');
    this.searchBoxForm = new disneyBnB.Views.ListingFormSearch({
      el: input,
      listings: this.listings,
      listing: this.listing
    });
    google.maps.event.addListener(disneyBnB.searchBoxForm, 'places_changed', this.getLatLng.bind(this));
    return this;
  },

  getLatLng: function() {
    var places = disneyBnB.searchBoxForm.getPlaces();
    var place = places[0];
    this.latitude = place.geometry.location.k;
    this.longitude = place.geometry.location.D;
  },

  createListing: function(event){
    event.preventDefault();
    var data = $(this.$el.find('.listing-form')).serializeJSON();
    var user_id = disneyBnB.current_user.id;
    this.listing.set({
      longitude: this.longitude,
      latitude: this.latitude,
      owner_id: user_id
    });
    this.listing.save(data, {
      success: function(){
        this.listings.add(this.listing, {merge: true});
        Backbone.history.navigate('listing/' + this.listing.id, {trigger: true});
      }.bind(this),
      error: function(model, response){
        var errMessage = $('.listing-new-error');
        errMessage.html($('<p>All fields must be filled out!</p>'));
      }.bind(this)
    });
  },

  // initCloudinary: function(event){
  //   event.preventDefault();
  //   cloudinary.openUploadWidget({
  //     cloud_name: 'dbmzyvbq4',
  //     upload_preset: 'tylaqbxd',
  //     multiple: true,
  //     max_files: 3,
  //   },
  //   function(error, result) {
  //     debugger
  //   });
  // }
});
