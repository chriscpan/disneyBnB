disneyBnB.Views.ListingHomeSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(options){
    this.init_searchBar();
  },

  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    this.createSearchBoxHome();
  },

  createSearchBoxHome: function(){
    disneyBnB.searchBoxHome = new google.maps.places.SearchBox(this.$el.find('input')[0]);
  },

});
