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

  createSearchBox: function() {
    disneyBnB.searchBox = new google.maps.places.SearchBox(this.$el.find('input')[0]);
    this.attachMapListeners();
  },

  attachMapListeners: function(){
    // var fn = this.getListings;
    // var that = this;
    // google.maps.event.addListener(searchBox, 'places_changed', function(){
    //   fn.call(that, this);
    // });
    google.maps.event.addListener(disneyBnB.searchBox, 'places_changed', this.changeLatLng.bind(this));
  },

  changeLatLng: function() {
    var places = disneyBnB.searchBox.getPlaces();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.A;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.F;
    Backbone.history.navigate('/listings', {trigger:true});
  }
  //
  // getListings: function(event){
  //   var lat = disneyBnB.searchBox.getPlaces()[0].geometry.location.k;
  //   var lng = disneyBnB.searchBox.getPlaces()[0].geometry.location.D;
  //   var filterData = {
  //     lat: lat,
  //     lng: lng
  //   };
  //   this.collection.fetch({
  //     data: { search : filterData },
  //     success: function(){
  //       Backbone.history.navigate("listings", {trigger: true});
  //     }
  //   });
  // }
});
