disneyBnB.Views.ListingSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(options){
    this.input = this.$el.find('input');
    this.init_searchBar();
  },

  events: {
    'input': 'updateCities',
    'submit': 'getListings'
  },

  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    this.searchBox = new google.maps.places.SearchBox(this.$el.find('input')[0])
    this.attachListeners();
  },

  attachListeners: function() {
    google.maps.event.addListener(_map, 'bounds_changed', this.setBounds(this));
  },

  setBounds: function(){

  },
  
  renderListings: function(){
    this.$el.find('.listing-result').empty();

    // this.collection.fetch({
    //   data: function(){
    //
    //   },
    //   success: function(){
            // this.collection.each( function(listing) {
            // });
    //   }
    // });
  },

  updateCities: function(){
    // debugger
    if (this.input.val() === "") {
      this.render([]);
      return ;
    }
    // this.render(this.input.val());
  }
});
