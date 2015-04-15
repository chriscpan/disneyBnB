disneyBnB.Views.ListingSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(options){
    this.$el.find('input');
    this.init_searchBar();
  },

  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    searchBox = new google.maps.places.SearchBox(this.$el.find('input')[0]);
    this.attachMapListeners();
  },

  attachMapListeners: function(){
    var fn = this.getListings;
    var that = this;
    google.maps.event.addListener(searchBox, 'places_changed', function(){
      fn.call(that, this);
    });
  },

  getListings: function(event){

    console.log('getListings!');
    var lat = event.getPlaces()[0].geometry.location.k;
    var lng = event.getPlaces()[0].geometry.location.D;

    var filterData = {
      lat: lat,
      lng: lng
    };
    this.collection.fetch({
      data: { search : filterData },
      success: function(){
        console.log('success!');
        Backbone.history.navigate("listings", {trigger: true});
      }
    });
  }
});
