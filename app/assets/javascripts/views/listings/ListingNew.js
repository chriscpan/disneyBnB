disneyBnB.Views.ListingNew = Backbone.View.extend({
  tagName: 'div class=form-container',
  template: JST['listing/listingForm'],

  initialize: function(options){
    this.listings = options.collection;
    this.listing = options.model;
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'click .make-listing-button': 'createListing',
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
    this.initCloudinary();
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
    if (!this.new_image){
      $('.listing-new-error').html($('<p>All fields must be filled out!</p>'));
      return ;
    }
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
        this.new_image.set({
          listing_id: this.listing.id,
        });
        this.new_image.save();
        this.listing.images().add(this.new_image);
        debugger
        if (this.new_image2) {
          this.new_image2.set({
            listing_id: this.listing.id
          });
          this.new_image2.save();
          this.listing.images().add(this.new_image2);
        }
        if (this.new_image3) {
          this.new_image3.set({
            listing_id: this.listing.id
          });
          this.image3.save();
          this.listing.images().add(this.new_image3);
        }

        this.listings.fetch({
          success: function() {
            Backbone.history.navigate('/listings', {trigger: true});
          }
        });
      }.bind(this),
      error: function(model, response){
        var errMessage = $('.listing-new-error');
        errMessage.html($('<p>All fields must be filled out!</p>'));
      }.bind(this)
    });
  },

  initCloudinary: function(event){
    this.$('#upload_widget_opener').cloudinary_upload_widget({
          cloud_name: 'dbmzyvbq4',
          upload_preset: 'tylaqbxd',
          multiple: true,
          max_files: 3,
    },
   function(error, result) {
    var pic_url = result[0].secure_url;

      this.new_image = new disneyBnB.Models.Image({
        image_url: pic_url
      });

      if (result[1]) {
        this.new_image2 = new disneyBnB.Models.Image({
          image_url: result[1].secure_url
        });
      }

      if (result[2]) {
        this.new_image3 = new disneyBnB.Models.Image({
          image_url: result[2].secure_url
        });
      }
    }.bind(this));
  }
});
