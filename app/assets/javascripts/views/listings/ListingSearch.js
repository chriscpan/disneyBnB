disneyBnB.Views.ListingSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(options){
    this.init_searchBar();
  },

  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    // this.createSearchBoxHome();
    this.createSearchBox();
  },

  createSearchBoxHome: function(){
    if (window.location.hash === ""){
      searchBoxHome = new google.maps.places.SearchBox(this.$el.find('input')[0]);
    }
  },

  createSearchBox: function() {
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
    var lat = event.getPlaces()[0].geometry.location.k;
    var lng = event.getPlaces()[0].geometry.location.D;

    var filterData = {
      lat: lat,
      lng: lng
    };
    this.collection.fetch({
      data: { search : filterData },
      success: function(){
        Backbone.history.navigate("listings", {trigger: true});
      }
    });
  }
});
