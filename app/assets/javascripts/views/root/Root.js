disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(options){
    this.listings = options.listings;
  },

  events: {
    'click .root-submit': 'homeSearch'
  },

  render: function(){
    var content = this.template();
    this.$el.html(content);
    disneyBnB.findDatePicker();
    // debugger
    this.homeSearch = new disneyBnB.Views.ListingHomeSearch({
      el: $('.listing-search-home'),
      collection: this.listings
    });
    google.maps.event.addListener(disneyBnB.searchBoxHome, 'places_changed', this.searchFromHome.bind(this));
    return this;
  },

  searchFromHome: function() {
    // debugger
    var places = disneyBnB.searchBoxHome.getPlaces();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.k;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.D;
    // Backbone.history.navigate('/listings', {trigger:true});
  },

  homeSearch: function(event) {
    event.preventDefault();
    Backbone.history.navigate('/listings', {trigger:true});
  }
});
