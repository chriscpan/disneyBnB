disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(options){
    this.listings = options.listings;
    // debugger
  },

  events: {
    'click': 'login'
  },

  render: function(){
    var content = this.template();
    this.$el.html(content);
    disneyBnB.findDatePicker();
    this.homeSearch = new disneyBnB.Views.ListingSearch({
      el: $('.listing-search-home'),
      collection: this.listings
    });
    // debugger
    google.maps.event.addListener(disneyBnB.searchBox, 'places_changed', this.searchFromHome.bind(this));
    return this;
  },

  searchFromHome: function() {
    var places = disneyBnB.searchBox.getPlaces();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.k;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.D;
    Backbone.history.navigate('/listings', {trigger:true});
  },

  login: function(event) {
    debugger
    event.preventDefault();
    console.log('hello');
  }
});
