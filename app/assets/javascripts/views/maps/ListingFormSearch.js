disneyBnB.Views.ListingFormSearch = Backbone.View.extend({
  initialize: function(options){
    this.init_searchBar();
  },
  template: JST['listing/listingFormSearch'],


  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    this.createSearchBoxForm();
  },

  createSearchBoxForm: function(){
    disneyBnB.searchBoxForm = new google.maps.places.SearchBox(this.$el.find('input')[0]);
  },

});
