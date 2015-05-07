disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(options){
    this.listings = options.listings;
    this.listenTo(this.listings, 'sync', this.render.bind(this))
  },

  events: {
    'click .root-submit': 'homeSearch',
    'click .new-york-link': 'newYork',
    'click .san-francisco-link': 'sanFrancisco'
  },

  render: function(){
    var content = this.template();
    this.$el.html(content);
    disneyBnB.findDatePicker();
    this.homeSearch = new disneyBnB.Views.ListingHomeSearch({
      el: $('.listing-search-home'),
      collection: this.listings
    });
    google.maps.event.addListener(disneyBnB.searchBoxHome, 'places_changed', this.searchFromHome.bind(this));
    return this;
  },

  searchFromHome: function() {
    var places = disneyBnB.searchBoxHome.getPlaces();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.A;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.F;
    // Backbone.history.navigate('/listings', {trigger:true});
  },

  homeSearch: function(event) {
    event.preventDefault();
    Backbone.history.navigate('/listings', {trigger:true});
  },

  newYork: function() {
    event.preventDefault();
    disneyBnB.GLOBAL_LATITUDE = 40.7107490;
    disneyBnB.GLOBAL_LONGITUDE = -74.007783;
    Backbone.history.navigate('/listings', {trigger:true});
  },

  sanFrancisco: function() {
    event.preventDefault();
    disneyBnB.GLOBAL_LATITUDE = 37.7833;
    disneyBnB.GLOBAL_LONGITUDE = -122.4167;
    Backbone.history.navigate('/listings', {trigger:true});
  }
});
