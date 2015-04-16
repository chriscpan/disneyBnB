disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(options){
    this.listings = options.listings;
  },


  render: function(){
    var content = this.template();
    this.$el.html(content);
    disneyBnB.findDatePicker();
    this.homeSearch = new disneyBnB.Views.ListingSearch({
      el: $('.listing-search'),
      collection: this.listings
    });

    google.maps.event.addListener(searchBox, 'places_changed', this.addPin.bind(this));
    return this;
  },

  addPin: function() {
    var places = searchBoxHome.getPlaces();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.k;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.D;
    Backbone.history.navigate('/listings', {trigger:true});

  }
});
